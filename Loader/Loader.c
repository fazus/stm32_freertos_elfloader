#include "Loader.h"
#include "ff.h"
#include "main.h"
//#include "ILI9341/ILI9341_Touchscreen.h"

#include "ILI9341/ili9341.h"

#include "FreeRTOS.h"
#include <semphr.h>
#include <stdint.h>
#include <task.h>
#include <ctype.h>
static osThreadId_t g_app_thread_id = NULL;

void loader_turn_led_on(void) {

    HAL_GPIO_TogglePin(LD1_GPIO_Port, LD1_Pin);
}
uint8_t iks = 0;
void debug(uint32_t we)
{
    (void)(we);
iks++;


}

#include <stdint.h>
#include <string.h>
#include <elf.h>



int is_elf_file(const char *fname) {
    size_t len = strlen(fname);
    if (len < 4) return 0; // nazwa za krótka, żeby mieć ".elf"
    
    return (fname[len-4] == '.' &&
        toupper((unsigned char)fname[len-3]) == 'E' &&
        toupper((unsigned char)fname[len-2]) == 'L' &&
        toupper((unsigned char)fname[len-1]) == 'F');
}

char tabelix[8];
int load_elf(uint8_t *elf_data)
{
    Elf32_Ehdr* ehdr = (Elf32_Ehdr*) elf_data;
    Elf32_Shdr* shdr = (Elf32_Shdr*)(elf_data  +  ehdr->e_shoff);
    Elf32_Phdr* phdr = (Elf32_Phdr*)(elf_data  +  ehdr->e_phoff);

    void *app_base = pvPortMalloc(phdr->p_memsz);
    memset(app_base,0,phdr->p_memsz);

    AppHeader *app_header_ptr = app_base;


        
    for(uint8_t ik = 0; ik < 5; ik ++)
    {
        if(shdr[ik].sh_flags & SHF_ALLOC )
        {
            memcpy(app_base+shdr[ik].sh_addr, 
            elf_data + shdr[ik].sh_offset,
            shdr[ik].sh_size);
        }
    }
   


    uint32_t rel_type = 0; //ELF32_R_TYPE(info);
    uint32_t app_entry = (uintptr_t)app_base +shdr[2].sh_addr;

    Elf32_Shdr sh = shdr[3];
    uint16_t reloc_numb = sh.sh_size / sh.sh_entsize;
    Elf32_Rel *rel = NULL ; 
    for(uint8_t ik = 0; ik < reloc_numb; ik++)
    {
        rel = &((Elf32_Rel *)(elf_data + sh.sh_offset))[ik];
        rel_type = ELF32_R_TYPE(rel->r_info);
        uint16_t rel_offset =rel->r_offset;
        uintptr_t * p = (void*)((uintptr_t)app_base +rel_offset);
        switch(rel_type)
        {
            case R_ARM_THM_PC22:
                break;
            case R_ARM_ABS32: 
                *p += (uintptr_t)app_base;
                break;
        }
    }
    app_header_ptr->turn_led_on                      = loader_turn_led_on;
    app_header_ptr->rtos_api.osDelay                 = osDelay;
    app_header_ptr->rtos_api.osKernelGetTickCount    = osKernelGetTickCount;
    app_header_ptr->fs_api.f_close                   = f_close;
    app_header_ptr->fs_api.f_open                    = f_open;
    app_header_ptr->spi_lcd.chip_selet               = ili9341_chip_select;
    app_header_ptr->spi_lcd.data_comand              = ili9341_data_comand;
    app_header_ptr->spi_lcd.reset                    = ili9341_reset;
    app_header_ptr->spi_lcd.spi_send                 = ili9341_spi_send;
    app_header_ptr->pv_Port.pvPortMalloc = pvPortMalloc;
    app_header_ptr->pv_Port.vPortFree = vPortFree;
    app_header_ptr->pv_Port.sprintf = sprintf;
    app_header_ptr->_debug = debug;
    osThreadAttr_t appTask_attributes = {
        .name       = app_header_ptr->app_name,
        .stack_size = 8192,
        .priority   = osPriorityNormal,
    };

    g_app_thread_id = osThreadNew((osThreadFunc_t)app_entry, app_header_ptr, &appTask_attributes);
    
    return 0;
}

void Loader_Task(void *argument)
{
    osDelay(500); // chwilowy delay po starcie

    FRESULT res;
    DIR dir;
    FILINFO fno;
    FIL file;
    UINT bytesRead;
    void *elf_buf = NULL;

    // 1. Montowanie karty
    res = f_mount(&SDFatFS, (TCHAR const*)SDPath, 1);
    if (res != FR_OK) {
        Error_Handler(); // nie udało się zamontować
    }
 res = f_opendir(&dir, "sys");
    if (res != FR_OK) {
        Error_Handler(); // brak katalogu sys
        return;
    }

    for (;;) {
        res = f_readdir(&dir, &fno);
        if (res != FR_OK || fno.fname[0] == 0) break; // koniec katalogu

        if (fno.fattrib & AM_DIR) continue; // pomiń katalogi

        if (!is_elf_file(fno.fname)) continue; // pomiń pliki inne niż .elf

        // Budowanie pełnej ścieżki
        char path[64];
        snprintf(path, sizeof(path), "sys/%s", fno.fname);

        // Otwórz plik ELF
        res = f_open(&file, path, FA_READ);
        if (res != FR_OK) continue; // pomiń uszkodzony plik

        // Alokacja bufora i odczyt
        DWORD fileSize = f_size(&file);
        elf_buf = pvPortMalloc(fileSize);
        if (!elf_buf) {
            f_close(&file);
            continue; // brak RAM
        }

        UINT bytesRead;
        res = f_read(&file, elf_buf, fileSize, &bytesRead);
        f_close(&file);

        if (res != FR_OK || bytesRead != fileSize) {
            vPortFree(elf_buf);
            continue; // błąd odczytu
        }

        // Załaduj aplikację
        int load_res = load_elf(elf_buf);
        if (load_res != 0) {
            vPortFree(elf_buf);
            continue; // błąd ładowania
        }

        // UWAGA: jeśli aplikacja działa cały czas → nie zwalniamy elf_buf
        // free(elf_buf); // można dopiero po zakończeniu aplikacji
    }

    f_closedir(&dir);
    for(;;)
    {    
        osDelay(1000);
    }
}



BaseType_t MySemaphoreGive(SemaphoreHandle_t sem) {
    return xSemaphoreGive(sem);
}

BaseType_t MySemaphoreTake(SemaphoreHandle_t sem, TickType_t ticksToWait) {
    return xSemaphoreTake(sem, ticksToWait);
}

SemaphoreHandle_t MySemaphoreCreateBinary(void) {
    return xSemaphoreCreateBinary();
}

SemaphoreHandle_t MySemaphoreCreateMutex(void) {
    return xSemaphoreCreateMutex();
}

void MySemaphoreDelete(SemaphoreHandle_t sem) {
    vSemaphoreDelete(sem);
}


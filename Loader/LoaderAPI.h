#include "fatfs.h"
#include "cmsis_os2.h"
#include "semphr.h"
typedef struct {
    void (*spi_send)( uint8_t data );
    void (*data_comand)( char set_reset );
    void (*reset)( char set_reset );
    void (*chip_selet)( char set_reset );
} spi_lcd_type;

typedef struct {
    // Podstawowe funkcje plikowe
    FRESULT (*f_open)(FIL* fp, const TCHAR* path, BYTE mode);
    FRESULT (*f_close)(FIL* fp);
    FRESULT (*f_read)(FIL* fp, void* buff, UINT btr, UINT* br);
    FRESULT (*f_write)(FIL* fp, const void* buff, UINT btw, UINT* bw);
    FRESULT (*f_lseek)(FIL* fp, FSIZE_t ofs);
    FRESULT (*f_truncate)(FIL* fp);
    FRESULT (*f_sync)(FIL* fp);

    // Funkcje katalogowe
    FRESULT (*f_opendir)(DIR* dp, const TCHAR* path);
    FRESULT (*f_closedir)(DIR* dp);
    FRESULT (*f_readdir)(DIR* dp, FILINFO* fno);
    FRESULT (*f_findfirst)(DIR* dp, FILINFO* fno, const TCHAR* path, const TCHAR* pattern);
    FRESULT (*f_findnext)(DIR* dp, FILINFO* fno);
    FRESULT (*f_mkdir)(const TCHAR* path);
    FRESULT (*f_unlink)(const TCHAR* path);
    FRESULT (*f_rename)(const TCHAR* path_old, const TCHAR* path_new);
    FRESULT (*f_stat)(const TCHAR* path, FILINFO* fno);
    FRESULT (*f_chmod)(const TCHAR* path, BYTE attr, BYTE mask);
    FRESULT (*f_utime)(const TCHAR* path, const FILINFO* fno);
    FRESULT (*f_chdir)(const TCHAR* path);
    FRESULT (*f_chdrive)(const TCHAR* path);
    FRESULT (*f_getcwd)(TCHAR* buff, UINT len);
    FRESULT (*f_getfree)(const TCHAR* path, DWORD* nclst, FATFS** fatfs);
    FRESULT (*f_getlabel)(const TCHAR* path, TCHAR* label, DWORD* vsn);
    FRESULT (*f_setlabel)(const TCHAR* label);
    FRESULT (*f_forward)(FIL* fp, UINT(*func)(const BYTE*,UINT), UINT btf, UINT* bf);
    FRESULT (*f_expand)(FIL* fp, FSIZE_t szf, BYTE opt);
    FRESULT (*f_mount)(FATFS* fs, const TCHAR* path, BYTE opt);
    FRESULT (*f_mkfs)(const TCHAR* path, BYTE opt, DWORD au, void* work, UINT len);
    FRESULT (*f_fdisk)(BYTE pdrv, const DWORD* szt, void* work);

    // Funkcje pomocnicze do zapisu i odczytu tekstu
    int (*f_putc)(TCHAR c, FIL* fp);
    int (*f_puts)(const TCHAR* str, FIL* fp);
    int (*f_printf)(FIL* fp, const TCHAR* str, ...);
    TCHAR* (*f_gets)(TCHAR* buff, int len, FIL* fp);
} fs_api_type;

typedef void *(*pvPortMalloc_t)(size_t xSize);
typedef void (*vPortFree_t)(void *pv);
typedef int (*sprintf_t) (char *__restrict, const char *__restrict, ...);

typedef struct {
    sprintf_t       sprintf;
    vPortFree_t     vPortFree;
    pvPortMalloc_t  pvPortMalloc;
} pvPort_api_type;

typedef struct {
    osStatus_t (*osDelay)(uint32_t ms);
    uint32_t (*osKernelGetTickCount)(void);
} rtos_api_type;

typedef struct {
    BaseType_t (*give)(SemaphoreHandle_t sem);
    BaseType_t (*take)(SemaphoreHandle_t sem, TickType_t ticksToWait);
    SemaphoreHandle_t (*createBinary)(void);
    SemaphoreHandle_t (*createMutex)(void);
    void (*delete)(SemaphoreHandle_t sem);
} semaphore_api_type;

typedef struct {
    QueueHandle_t (*create)(UBaseType_t length, UBaseType_t itemSize);
    BaseType_t (*send)(QueueHandle_t q, const void *item, TickType_t ticksToWait);
    BaseType_t (*sendToFront)(QueueHandle_t q, const void *item, TickType_t ticksToWait);
    BaseType_t (*sendToBack)(QueueHandle_t q, const void *item, TickType_t ticksToWait);
    BaseType_t (*receive)(QueueHandle_t q, void *buffer, TickType_t ticksToWait);
    UBaseType_t (*messagesWaiting)(QueueHandle_t q);
    void (*delete)(QueueHandle_t q);
} queue_api_type;

typedef struct {
    char magic[6];                    // 5-znakowy magic + null terminator
    char app_name[10];
    uint32_t version;                 // Wersja aplikacji
    uintptr_t entry_offset;            // Offset do punktu wejścia
    uint16_t led_timer;               // Timer dla LED
    void (*turn_led_on)(void);        // Funkcja włączająca LED
    pvPort_api_type pv_Port;

    // Podstawowe funkcje plikowe
    fs_api_type fs_api;
    // Inne funkcje systemowe
    rtos_api_type rtos_api;

    spi_lcd_type spi_lcd;
    
    void (*return_to_loader)(void);   // Funkcja powrotu do loadera
    void (*_debug)(uint32_t we);   // Funkcja powrotu do loadera
    
} AppHeader;


#ifndef LOADER_H
#define LOADER_H
#include "FreeRTOS.h"
#include "cmsis_os.h"
// #include "../Loader/elf.h"
#include <elf.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "LoaderAPI.h"
#include "semphr.h"

typedef struct AppTask {
    osThreadId_t handle;        // uchwyt CMSIS-RTOS2
    struct AppTask *next;       // wskaźnik na następny w liście
} AppTask;

typedef struct AppContext {
    osThreadId_t mother_task;   // główny wątek aplikacji
    AppTask *child_tasks;       // lista wątków-dzieci
    const char *app_name;       // nazwa aplikacji
} AppContext;


void loader_turn_led_on(void);
void loader_delay_ms(uint32_t ms);
void Loader_Task(void *argument);

BaseType_t MySemaphoreGive(SemaphoreHandle_t sem);
BaseType_t MySemaphoreTake(SemaphoreHandle_t sem, TickType_t ticksToWait);
SemaphoreHandle_t MySemaphoreCreateBinary(void);
SemaphoreHandle_t MySemaphoreCreateMutex(void);
void MySemaphoreDelete(SemaphoreHandle_t sem);


#endif

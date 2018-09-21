#include <stdio.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/gpio.h"
#include "sdkconfig.h"
/* 定义需要使用的头文件 */

#include "Hal_Gpio.h"

void blink_task(void *pvParameter)
{
    Hal_GpioInit();

    while(1)
    {
        gpio_set_level(LED1_GPIO, 0);
        vTaskDelay(1000 / portTICK_PERIOD_MS);
        /* FreeRTOS 延时函数 */
        gpio_set_level(LED1_GPIO, 1);
        /* 将led置0 */
        vTaskDelay(1000 / portTICK_PERIOD_MS);
    }
}


void app_main()
{
    xTaskCreate(&blink_task, "blink_task", configMINIMAL_STACK_SIZE, NULL, 5, NULL);
    /* 创建一个任务 */
}


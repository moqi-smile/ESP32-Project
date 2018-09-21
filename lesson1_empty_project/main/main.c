#include <stdio.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_system.h"

#include "Gpio.h"

void app_main()
{
    Hal_GpioInit();

    while (1)
    {
        printf ("Hell World\n");
        vTaskDelay(1000 / portTICK_PERIOD_MS);
    }
}


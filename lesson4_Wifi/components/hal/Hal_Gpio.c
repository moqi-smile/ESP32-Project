#include "driver/gpio.h"
#include "sdkconfig.h"

#include "Hal_Gpio.h"

static void Gpio_OutInit(uint8_t Gpiox)
{
    gpio_pad_select_gpio(Gpiox);
    gpio_set_direction(Gpiox, GPIO_MODE_OUTPUT);
    /* GPIO 初始化 */
}

void Hal_GpioInit(void)
{
    Gpio_OutInit(LED1_GPIO);
}


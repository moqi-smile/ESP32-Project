#include "esp_wifi.h"
#include "esp_system.h"
#include "esp_log.h"

static void Wifi_StaInit(void)
{
    wifi_init_config_t cfg = WIFI_INIT_CONFIG_DEFAULT();
    ESP_ERROR_CHECK( esp_wifi_init(&cfg) );
 
    ESP_ERROR_CHECK( esp_wifi_set_storage(WIFI_STORAGE_FLASH) );
    ESP_ERROR_CHECK( esp_wifi_set_mode(WIFI_MODE_STA) );
    wifi_config_t sta_config = 
    {
        .sta = 
        {
            .ssid = "moqi",
            .password = "ecxpp8888",
        }
    };

    ESP_ERROR_CHECK( esp_wifi_set_config(WIFI_IF_STA, &sta_config) );

}

void Hal_WifiInit(void)
{
    Wifi_StaInit();
    ESP_ERROR_CHECK( esp_wifi_start() );
}

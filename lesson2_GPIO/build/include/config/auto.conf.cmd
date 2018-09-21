deps_config := \
	/home/moqi/work/sources/esp-idf/components/app_trace/Kconfig \
	/home/moqi/work/sources/esp-idf/components/aws_iot/Kconfig \
	/home/moqi/work/sources/esp-idf/components/bt/Kconfig \
	/home/moqi/work/sources/esp-idf/components/driver/Kconfig \
	/home/moqi/work/sources/esp-idf/components/esp32/Kconfig \
	/home/moqi/work/sources/esp-idf/components/esp_adc_cal/Kconfig \
	/home/moqi/work/sources/esp-idf/components/esp_http_client/Kconfig \
	/home/moqi/work/sources/esp-idf/components/ethernet/Kconfig \
	/home/moqi/work/sources/esp-idf/components/fatfs/Kconfig \
	/home/moqi/work/sources/esp-idf/components/freertos/Kconfig \
	/home/moqi/work/demo/ESP32-Project/lesson2_GPIO/components/hal/Kconfig \
	/home/moqi/work/sources/esp-idf/components/heap/Kconfig \
	/home/moqi/work/sources/esp-idf/components/http_server/Kconfig \
	/home/moqi/work/sources/esp-idf/components/libsodium/Kconfig \
	/home/moqi/work/sources/esp-idf/components/log/Kconfig \
	/home/moqi/work/sources/esp-idf/components/lwip/Kconfig \
	/home/moqi/work/sources/esp-idf/components/mbedtls/Kconfig \
	/home/moqi/work/sources/esp-idf/components/mdns/Kconfig \
	/home/moqi/work/sources/esp-idf/components/mqtt/Kconfig \
	/home/moqi/work/sources/esp-idf/components/openssl/Kconfig \
	/home/moqi/work/sources/esp-idf/components/pthread/Kconfig \
	/home/moqi/work/sources/esp-idf/components/spi_flash/Kconfig \
	/home/moqi/work/sources/esp-idf/components/spiffs/Kconfig \
	/home/moqi/work/sources/esp-idf/components/tcpip_adapter/Kconfig \
	/home/moqi/work/sources/esp-idf/components/vfs/Kconfig \
	/home/moqi/work/sources/esp-idf/components/wear_levelling/Kconfig \
	/home/moqi/work/sources/esp-idf/components/bootloader/Kconfig.projbuild \
	/home/moqi/work/sources/esp-idf/components/esptool_py/Kconfig.projbuild \
	/home/moqi/work/sources/esp-idf/components/partition_table/Kconfig.projbuild \
	/home/moqi/work/sources/esp-idf/Kconfig

include/config/auto.conf: \
	$(deps_config)

ifneq "$(IDF_CMAKE)" "n"
include/config/auto.conf: FORCE
endif

$(deps_config): ;

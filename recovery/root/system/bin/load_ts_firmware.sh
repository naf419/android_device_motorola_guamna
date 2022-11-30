#!/system/bin/sh

firmware_path=/vendor/firmware/ICNL9911.bin
module_path=/vendor/lib/modules
flash_path=/sys/chipone-tddi/cts_firmware

# Load all needed modules
insmod $module_path/sensors_class.ko
insmod $module_path/utags.ko
insmod $module_path/exfat.ko
insmod $module_path/mmi_annotate.ko
insmod $module_path/mmi_info.ko
insmod $module_path/mmi_sys_temp.ko
insmod $module_path/moto_f_usbnet.ko
insmod $module_path/himax_v3_mmi_hx83102d.ko
insmod $module_path/himax_v3_mmi.ko
insmod $module_path/chipone_tddi_mmi.ko
insmod $module_path/qpnp_adaptive_charge.ko
insmod $module_path/qpnp-power-on-mmi.ko

sleep 2

echo $firmware_path > $flash_path/update_from_file

return 0

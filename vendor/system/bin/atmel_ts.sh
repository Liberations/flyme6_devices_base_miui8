#!/system/bin/sh

sleep 2

cd /sys/bus/i2c/devices/3-004a

chmod 666 update_fw

echo "mxt_308u.fw" > update_fw

sleep 2
chmod 440 update_fw
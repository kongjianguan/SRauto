# 请不要硬编码/magisk/modname/...;相反，请使用$MODDIR/...
# 这将使您的脚本兼容，即使Magisk以后改变挂载点
MODDIR=${0%/*}

# 该脚本将在设备开机后作为延迟服务启动
until [ -d "/sdcard/Android" ]; do
    sleep 1
done
chmod -R 777 .
while true; do
   pgrep -f "/data/adb/modules/SRauto/crond"
   if [ $? -ne 0 ]; then
        chmod 0777 $MODDIR/crond/crond
        $MODDIR/crond/crond -c $MODDIR/script/cron.d
   fi
   sleep 60 # 每分钟检查一次
done





on=`getprop recovery.log`
runmode=`getprop ro.runmode`

if [ "$runmode" = "factory" ]; then
    setprop persist.sys.huawei.debug.on 1
fi

wipe_data=`getprop recovery.wipe_data`
debug=`getprop persist.sys.huawei.debug.on`

case "$on" in
    "on")
        case "$debug" in
            "1")
                if [ "$wipe_data" = "1" ]; then
                    echo 1 > /sys/module/msm_poweroff/parameters/download_mode
                else
                    mkdir /data/log 0751 system system
                    mkdir /data/log/android_logs 0755 system system
                    echo 1 > /sys/module/msm_poweroff/parameters/download_mode
                    start applogcat
                    start kmsglogcat
                fi
            ;;
            "0")
            ;;
        esac
    ;;
    "off")
        stop applogcat
        stop kmsglogcat
    ;;
esac


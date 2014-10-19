#!/system/bin/sh
#usage: chargelog.sh  <interval(sec)> <maxline>

PS_PATH="/sys/class/power_supply/"

#if some node infomation is redundant,the node should be commented
#in this array. 

NODE_NAME=( \
#---------------------------------------
#battery power supply
#---------------------------------------
"battery/capacity" \
#"battery/charge_full_design" \
"battery/charge_type" \
"battery/charging_enabled" \
#"battery/current_max" \
"battery/current_now" \
"battery/health" \
"battery/present" \
"battery/status" \
#"battery/system_temp_level" \
#"battery/technology" \
#"battery/online" \
"battery/temp" \
#"battery/type" \
#"battery/voltage_max_design" \
#"battery/voltage_min_design" \
"battery/voltage_now" \
"battery/hot_current_limit" \
"battery/input_current_max" \
#"battery/factory_diag" \
#"battery/online" \
#---------------------------------------
#bms power supply
#---------------------------------------
#"bms/capacity" \
#"bms/charge_full_design" \
#"bms/current_max" \
#"bms/current_now" \
#"bms/present" \
#"bms/type" \
"bms/battery_type" \
"bms/voltage_ocv" \
#---------------------------------------
#usb power supply
#---------------------------------------
"usb/current_max" \
"usb/voltage_max" \
"usb/voltage_now" \
"usb/online" \
"usb/present" \
"usb/scope" \
"usb/type" \
"battery/charge_log" \
)

charge_mode=1

#check if system partition has been mounted,
#if no, shell script can not execute. 
#this code block test this case.

id
if [ $? -ne 0 ];then
    exit
fi

cat /proc/cmdline | grep charger
if [ $? -eq 0 ];then
    charge_mode=0
fi

#check log path
cat /data/property/persist.sys.chargelog | grep data
if [ $? -ne 0 ];then
    stop chargelog
    read
fi

test -d "/data/log/chargelog/"
if [ $? -ne 0 ];then
    mkdir -p "/data/log/chargelog/"
    chmod 755 /data/log/chargelog
fi
log_path="/data/log/chargelog/chargelog.txt"

echo "---> log path is $log_path"

file_size=0

cat /proc/app_info | grep MSM8916_G760

if [ $? -eq 0 ];then
#---------------------------------------------------------------------------------------------------------------------------------
#Ti log begin
    echo -n "Date  Time     Voltage Current SOC RM FCC II SI Temp FLAG Status Qmax Reg[0] Reg[1] Reg[2] Reg[3] Reg[4] usbonline usbscope usbtype usbcurrentmax batterypresent hot_current_limit health status charging_enabled soc_user Mode" >> $log_path
    echo >> $log_path
    chmod 755 /data/log/chargelog/chargelog.txt
    while true
    do
        echo -n `date +%0m-%0e` >> $log_path
        echo -n ' ' >> $log_path
        echo -n `date +%H:%M:%S` >> $log_path
        echo -n ' ' >> $log_path

        echo -n `cat /sys/bus/i2c/drivers/ti,bq27510/ti-bms-prop/gaugelog` >> $log_path
        echo -n ' ' >> $log_path
        echo -n `cat /sys/devices/soc.0/78b8000.i2c/i2c-4/4-006b/power_supply/ti-charger/ti-charger-prop/registers` >> $log_path
        echo -n ' ' >> $log_path

        echo -n `cat /sys/class/power_supply/usb/online` >> $log_path
        echo -n ' ' >> $log_path
        echo -n `cat /sys/class/power_supply/usb/scope` >> $log_path
        echo -n ' ' >> $log_path
        echo -n `cat /sys/class/power_supply/usb/type` >> $log_path
        echo -n ' ' >> $log_path
        echo -n `cat /sys/class/power_supply/usb/current_max` >> $log_path
        echo -n ' ' >> $log_path
        echo -n `cat /sys/class/power_supply/battery/present` >> $log_path
        echo -n ' ' >> $log_path
        echo -n `cat /sys/class/power_supply/battery/hot_current_limit` >> $log_path
        echo -n ' ' >> $log_path

        echo -n `cat /sys/class/power_supply/ti-charger/health` >> $log_path
        echo -n ' ' >> $log_path
        echo -n `cat /sys/class/power_supply/ti-charger/status` >> $log_path
        echo -n ' ' >> $log_path
        echo -n `cat /sys/class/power_supply/ti-charger/capacity` >> $log_path
        echo -n ' ' >> $log_path
        echo -n `cat /sys/class/power_supply/ti-charger/charging_enabled` >> $log_path
        echo -n ' ' >> $log_path

        if [ charge_mode -eq 1 ];then
            echo -n "ON" >> $log_path
        else
            echo -n "OFF" >> $log_path
        fi

        echo >> $log_path

        #get log file size
        TEMP=`ls -s $log_path`
        arr=(${TEMP})
        file_size=${arr[0]}

        if [ $file_size -ge $2 ];then
            mv $log_path $log_path".old"
            file_size=0
        fi
        sync
        sleep $1
    done
#Ti log end
#---------------------------------------------------------------------------------------------------------------------------------
else
#---------------------------------------------------------------------------------------------------------------------------------
#Qcom log begin
#print item name in this loop
cat $log_path | grep time
if [ $? -ne 0 ];then
    echo -n "date " >> $log_path
    echo -n "time " >> $log_path
    for path in ${NODE_NAME[@]}
    do
        echo -n "$path" >> $log_path
        echo -n ' ' >> $log_path
    done
    echo -n "MODE" >> $log_path
    echo >> $log_path
    chmod 755 /data/log/chargelog/chargelog.txt
fi

while :
do
    echo -n `date +%0m-%0e` >> $log_path
    echo -n ' ' >> $log_path
    echo -n `date +%H:%M:%S` >> $log_path
    echo -n ' ' >> $log_path

    for path in ${NODE_NAME[@]}
    do
        echo -n `cat "$PS_PATH$path"` >> $log_path
        echo -n ' ' >> $log_path
    done

    #/* <DTS2014081910150  tanyanying 20140819 begin */
    echo -n `cat /sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_cur_freq` >> $log_path
    echo -n ' ' >> $log_path

    echo -n `cat /sys/devices/virtual/thermal/thermal_zone2/temp` >> $log_path
    echo -n ' ' >> $log_path

    echo -n `cat /sys/devices/virtual/thermal/thermal_zone4/temp` >> $log_path
    echo -n ' ' >> $log_path

    echo -n `cat /sys/module/qpnp_adc_voltage/parameters/therm_cpu` >> $log_path
    echo -n ' ' >> $log_path
    #/* DTS2014081910150  tanyanying 20140819 end> */

    
    if [ charge_mode -eq 1 ];then
        echo -n "ON" >> $log_path
    else
        echo -n "OFF" >> $log_path
    fi
    
    echo >> $log_path

    #get log file size
    TEMP=`ls -s $log_path`
    arr=(${TEMP})
    file_size=${arr[0]}

    if [ $file_size -ge $2 ];then
        mv $log_path $log_path".old.txt"
        file_size=0
    fi
    sync
    sleep $1
done
#Qcom log end
#---------------------------------------------------------------------------------------------------------------------------------
fi

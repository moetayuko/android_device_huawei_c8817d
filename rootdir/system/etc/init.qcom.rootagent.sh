#!/system/bin/sh
# Copyright (c) 2012-2013, Qualcomm Technologies, Inc.
#    All Rights Reserved.
#    Qualcomm Technologies Proprietary and Confidential.
#
#set -x
agentvalue=`getprop persist.sys.agentvalue`

value=($agentvalue)
anrList=()
tombstonesList=()
action=${value[0]} # 0 based
doAction=""

# Autotrigger functions
ROOT_AUTOTRIGGER_PATH=${value[2]}"/autotrigger"
function Preprocess(){
rm -r $ROOT_AUTOTRIGGER_PATH
mkdir -p $ROOT_AUTOTRIGGER_PATH
}
function Logcat(){
logcat -v time -d > $ROOT_AUTOTRIGGER_PATH/main.txt
logcat -b radio -v time -d > $ROOT_AUTOTRIGGER_PATH/radio.txt
logcat -b events -v time -d > $ROOT_AUTOTRIGGER_PATH/events.txt
}
function Dmesg(){
dmesg > $ROOT_AUTOTRIGGER_PATH/dmesg.txt;
}
function Dumpsys(){
dumpsys > $ROOT_AUTOTRIGGER_PATH/dumpsys.txt;
}
function Top(){
top -n 1 > $ROOT_AUTOTRIGGER_PATH/top.txt;
}
function BugReport(){
bugreport > $ROOT_AUTOTRIGGER_PATH/bugreport.txt
}

function FilterAnr(){
ANR_PATH="/data/anr"
BACKUP_FILE="/data/anr/backup"
TEMP_FILE="/data/anr/temp"
tempFile1=""
tempMidified1=""
tempFile2=""
tempMidified2=""
i=0;
k=0;

ls -l $ANR_PATH>$TEMP_FILE
while read line
do
    lineArr1=($line)
        if [ ${lineArr1[6]} != "temp" ]&&[ ${lineArr1[6]} != "backup" ];then
            tempFile1="$tempFile1 ${lineArr1[6]}"
            strTemp1=${lineArr1[4]}"-"${lineArr1[5]}
            tempMidified1="$tempMidified1 $strTemp1"
        fi
done <$TEMP_FILE
file1=($tempFile1)
dateModified1=($tempMidified1)

if [ -f "$BACKUP_FILE" ];then
    while read line
    do
        lineArr2=($line)
        tempFile2="$tempFile2 ${lineArr2[6]}"
        strTemp2=${lineArr2[4]}"-"${lineArr2[5]}
        tempMidified2="$tempMidified2 $strTemp2"
    done <$BACKUP_FILE
    file2=($tempFile2)
    dateModified2=($tempMidified2)
    for m in ${file1[@]};
    do
        j=0
        isExisted=0
        for n in ${file2[@]};
        do
            if [ $m = $n ];then
                isExisted=1
                if [ ${dateModified1[$i]} \> ${dateModified2[$j]} ];then
                    anrList[$k]=$m
                    let k=k+1
                fi
            fi
            let j=j+1
        done
            if [ $isExisted = 0 ];then
                anrList[$k]=$m
                let k=k+1
            fi
        let i=i+1
    done
else
    anrList=($tempFile1)
fi

rm $BACKUP_FILE
mv $TEMP_FILE $BACKUP_FILE
}

function FilterTombstones(){
TOMBSTONES_PATH="/data/tombstones"
BACKUP_FILE="/data/tombstones/backup"
TEMP_FILE="/data/tombstones/temp"
tempFile1=""
tempMidified1=""
tempFile2=""
tempMidified2=""
i=0;
k=0;

ls -l $TOMBSTONES_PATH>$TEMP_FILE
while read line
do
    lineArr1=($line)
    if [ ${lineArr1[6]} != "temp" ]&&[ ${lineArr1[6]} != "backup" ];then
        tempFile1="$tempFile1 ${lineArr1[6]}"
        strTemp1=${lineArr1[4]}"-"${lineArr1[5]}
        tempMidified1="$tempMidified1 $strTemp1"
    fi
done <$TEMP_FILE
file1=($tempFile1)
dateModified1=($tempMidified1)

if [ -f "$BACKUP_FILE" ];then
    while read line
    do
        lineArr2=($line)
        tempFile2="$tempFile2 ${lineArr2[6]}"
        strTemp2=${lineArr2[4]}"-"${lineArr2[5]}
        tempMidified2="$tempMidified2 $strTemp2"
        done <$BACKUP_FILE
    file2=($tempFile2)
    dateModified2=($tempMidified2)
    for m in ${file1[@]};
    do
        j=0
        isExisted=0
        for n in ${file2[@]};
        do
            if [ $m = $n ];then
            isExisted=1
                if [ ${dateModified1[$i]} \> ${dateModified2[$j]} ];then
                    tombstonesList[$k]=$m
                    let k=k+1
                fi
            fi
            let j=j+1
        done
            if [ $isExisted = 0 ];then
                tombstonesList[$k]=$m
                let k=k+1
            fi
        let i=i+1
    done
else
    tombstonesList=($tempFile1)
fi

rm $BACKUP_FILE
mv $TEMP_FILE $BACKUP_FILE
}

function ANR(){
ANR_PATH="/data/anr"
#ANR_LIST=`ls $ANR_PATH`
for file in ${anrList[@]};
do
    cat $ANR_PATH/$file> $ROOT_AUTOTRIGGER_PATH/$file
done
}
function Tombstone(){
TOMBSTONE_PATH="/data/tombstones"
#TOMBSTONE_LIST=`ls $TOMBSTONE_PATH`
for file in ${tombstonesList[@]};
do
    cat $TOMBSTONE_PATH/$file> $ROOT_AUTOTRIGGER_PATH/$file
done
}

function CatchAll(){
    Preprocess;Top;Dumpsys;Logcat;Dmesg;FilterAnr;ANR;FilterTombstones;Tombstone;
}
# only the action in our action list can be executed
case $action in
    "autotrigger")
        case ${value[1]} in
            "data_app_crash")
                CatchAll
                ;;
            "system_app_crash")
                CatchAll
                ;;
            "SYSTEM_RESTART")
                CatchAll
                BugReport
                ;;
            "SYSTEM_TOMBSTONE")
                CatchAll
                ;;
            esac
        ;;
esac
echo $doAction

#eval "$doAction"
# clear the action when done
setprop persist.sys.agentvalue 0

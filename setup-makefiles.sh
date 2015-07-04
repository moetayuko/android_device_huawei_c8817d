#!/bin/sh

set -e

export DEVICE=c8817d
export VENDOR=huawei
./../../$VENDOR/msm8916-common/setup-makefiles.sh $@

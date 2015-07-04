#!/bin/sh

set -e

export VENDOR=huawei
export DEVICE=c8817d
./../../$VENDOR/msm8916-common/extract-files.sh $@

DEVICE_PACKAGE_OVERLAYS := device/huawei/c8817d/overlay

TARGET_USES_QCOM_BSP := true
TARGET_USES_QCA_NFC := true
# Add QC Video Enhancements flag
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

LOCAL_PATH := device/huawei/c8817d
#ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
#else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
#endif

#PRODUCT_COPY_FILES += \
#    $(LOCAL_KERNEL):kernel

DEVICE_PACKAGE_OVERLAYS := device/huawei/c8817d/overlay

# media_profiles and media_codecs xmls for 8916
ifeq ($(TARGET_ENABLE_QC_AV_ENHANCEMENTS), true)
PRODUCT_COPY_FILES += device/huawei/c8817d/media/media_profiles_8916.xml:system/etc/media_profiles.xml \
                      device/huawei/c8817d/media/media_codecs_8916.xml:system/etc/media_codecs.xml
endif

PRODUCT_PROPERTY_OVERRIDES += \
       dalvik.vm.heapgrowthlimit=128m

PRODUCT_NAME := msm8916_32
PRODUCT_DEVICE := msm8916_32
PRODUCT_BRAND := Huawei
PRODUCT_MANUFACTURER := HUAWEI
PRODUCT_MODEL := C8817D

# Audio configuration file
PRODUCT_COPY_FILES += \
    device/huawei/c8817d/audio_policy.conf:system/etc/audio_policy.conf \
    device/huawei/c8817d/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    device/huawei/c8817d/mixer_paths_mtp.xml:system/etc/mixer_paths_mtp.xml \
    device/huawei/c8817d/mixer_paths_qrd_skuh.xml:system/etc/mixer_paths_qrd_skuh.xml \
    device/huawei/c8817d/mixer_paths_qrd_skui.xml:system/etc/mixer_paths_qrd_skui.xml \
    device/huawei/c8817d/mixer_paths_qrd_skuhf.xml:system/etc/mixer_paths_qrd_skuhf.xml \
    device/huawei/c8817d/mixer_paths.xml:system/etc/mixer_paths.xml

# NFC packages
ifeq ($(TARGET_USES_QCA_NFC),true)
NFC_D := true

ifeq ($(NFC_D), true)
    PRODUCT_PACKAGES += \
        libnfcD-nci \
        libnfcD_nci_jni \
        nfc_nci.msm8916 \
        NfcDNci \
        Tag \
        com.android.nfc_extras \
        com.android.nfc.helper \
        SmartcardService \
        org.simalliance.openmobileapi \
        org.simalliance.openmobileapi.xml \
        com.android.qcom.nfc_extras \
        com.gsma.services.nfc \
        com.gsma.services.utils\
        GsmaNfcService \
        libassd
else
    PRODUCT_PACKAGES += \
    libnfc-nci \
    libnfc_nci_jni \
    nfc_nci.msm8916 \
    NfcNci \
    Tag \
    com.android.nfc_extras
endif

# file that declares the MIFARE NFC constant
# Commands to migrate prefs from com.android.nfc3 to com.android.nfc
# NFC access control + feature files + configuration
PRODUCT_COPY_FILES += \
        packages/apps/Nfc/migrate_nfc.txt:system/etc/updatecmds/migrate_nfc.txt \
        frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
        frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
        frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
        frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml
# Enable NFC Forum testing by temporarily changing the PRODUCT_BOOT_JARS
# line has to be in sync with build/target/product/core_base.mk
PRODUCT_BOOT_JARS := core:conscrypt:okhttp:core-junit:bouncycastle:ext:com.android.nfc.helper:framework:framework2:telephony-common:voip-common:mms-common:android.policy:services:apache-xml:webviewchromium:telephony-msim

ifeq ($(NFC_D), true)
PRODUCT_BOOT_JARS += org.simalliance.openmobileapi:com.android.qcom.nfc_extras:com.gsma.services.nfc
# SmartcardService, SIM1,SIM2,eSE1 not including eSE2,SD1 as default
ADDITIONAL_BUILD_PROPERTIES += persist.nfc.smartcard.config=SIM1,SIM2,eSE1
endif

endif # TARGET_USES_QCA_NFC

PRODUCT_BOOT_JARS += qcmediaplayer:WfdCommon:oem-services:qcom.fmradio:org.codeaurora.Performance:vcard
# Listen configuration file
PRODUCT_COPY_FILES += \
    device/huawei/c8817d/listen_platform_info.xml:system/etc/listen_platform_info.xml

# Feature definition files for msm8916
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.le.conf:system/etc/bluetooth/main.conf \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml

#fstab.qcom
PRODUCT_PACKAGES += fstab.qcom

PRODUCT_PACKAGES += \
    libqcomvisualizer \
    libqcompostprocbundle

# Recovery
PRODUCT_PACKAGES += \
    recoverylog.sh

# Ramdisk
PRODUCT_PACKAGES += \
    init.crda.sh \
    init.qcom.bt.sh \
    hsic.control.bt.sh \
    init.ath3k.bt.sh \
    init.qcom.coex.sh \
    init.qcom.efs.sync.sh \
    init.qcom.fm.sh \
    init.qcom.post_boot.sh \
    init.qcom.sdio.sh \
    init.qcom.wifi.sh

PRODUCT_PACKAGES += \
    init.class_main.sh \
    init.qcom.class_core.sh \
    init.qcom.early_boot.sh \
    init.qcom.rc \
    init.qcom.factory.sh \
    init.qcom.sh \
    init.qcom.ssr.sh \
    init.mdm.sh \
    init.qcom.syspart_fixup.sh \
    init.qcom.audio.sh \
    qca6234-service.sh \
    hcidump.sh \
    init.qcom.usb.rc \
    init.qcom.usb.sh \
    init.qcom.uicc.sh \
    ueventd.qcom.rc

# Prebuilt binary
PRODUCT_PACKAGES += \
    chargelog.sh \
    e2fsck_s \
    healthd \
    huawei_version \
    hw_scsi_switch \
    libqmi_oem_main \
    rmt_oeminfo \
    rmt_storage \
    test_diag \
    test_oeminfo \
    usb_update

#Set default profile to FUT
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.logkit.ctrlcode=1

#OEM Services library
PRODUCT_PACKAGES += oem-services
PRODUCT_PACKAGES += libsubsystem_control
PRODUCT_PACKAGES += libSubSystemShutdown

PRODUCT_PACKAGES += wcnss_service

#wlan driver
PRODUCT_COPY_FILES += \
    device/huawei/c8817d/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    device/huawei/c8817d/WCNSS_qcom_wlan_nv.bin:persist/WCNSS_qcom_wlan_nv.bin

PRODUCT_PACKAGES += \
    wpa_supplicant_overlay.conf \
    p2p_supplicant_overlay.conf
#ANT+ stack
PRODUCT_PACKAGES += \
AntHalService \
libantradio \
antradio_app

#spec service
PRODUCT_PACKAGES += init.qti.carrier.rc

# Defined the locales
PRODUCT_LOCALES += th_TH vi_VN tl_PH hi_IN ar_EG ru_RU tr_TR pt_BR bn_IN mr_IN ta_IN te_IN zh_HK in_ID

# Set this device to DSDS as default.
ADDITIONAL_BUILD_PROPERTIES += persist.radio.multisim.config=dsds

rp_pppoe := pppoe
PRODUCT_PACKAGES += $(rp_pppoe)

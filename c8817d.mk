$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

LOCAL_PATH := device/huawei/c8817d

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# media_profiles and media_codecs xmls for 8916
PRODUCT_COPY_FILES += \
    device/huawei/c8817d/media/media_profiles_8916.xml:system/etc/media_profiles.xml \
    device/huawei/c8817d/media/media_codecs_8916.xml:system/etc/media_codecs.xml

# Audio configuration file
PRODUCT_COPY_FILES += \
    device/huawei/c8817d/audio_policy.conf:system/etc/audio_policy.conf \
    device/huawei/c8817d/mixer_paths_mtp.xml:system/etc/mixer_paths_mtp.xml \
    device/huawei/c8817d/mixer_paths_qrd_skuh.xml:system/etc/mixer_paths_qrd_skuh.xml \
    device/huawei/c8817d/mixer_paths_qrd_skui.xml:system/etc/mixer_paths_qrd_skui.xml \
    device/huawei/c8817d/mixer_paths_qrd_skuhf.xml:system/etc/mixer_paths_qrd_skuhf.xml \
    device/huawei/c8817d/mixer_paths.xml:system/etc/mixer_paths.xml

# gps/location secuity configuration file
PRODUCT_COPY_FILES += \
    device/huawei/c8817d/sec_config:system/etc/sec_config

# Listen configuration file
PRODUCT_COPY_FILES += \
    device/huawei/c8817d/listen_platform_info.xml:system/etc/listen_platform_info.xml

PRODUCT_COPY_FILES += \
    device/huawei/c8817d/whitelist_appops.xml:system/etc/whitelist_appops.xml

PRODUCT_COPY_FILES += \
    device/huawei/c8817d/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    device/huawei/c8817d/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    device/huawei/c8817d/WCNSS_qcom_wlan_nv.bin:system/etc/wifi/WCNSS_qcom_wlan_nv.bin \
    device/huawei/c8817d/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Offmode charge
PRODUCT_COPY_FILES += \
    device/huawei/c8817d/rootdir/charger:root/charger \
    device/huawei/c8817d/rootdir/res/images/720x1280/batt_level_scale.png:root/res/images/720x1280/batt_level_scale.png \
    device/huawei/c8817d/rootdir/res/images/720x1280/batt_level_top.png:root/res/images/720x1280/batt_level_top.png \
    device/huawei/c8817d/rootdir/res/images/720x1280/bg.png:root/res/images/720x1280/bg.png \
    device/huawei/c8817d/rootdir/res/images/720x1280/empty_charge.png:root/res/images/720x1280/empty_charge.png \
    device/huawei/c8817d/rootdir/res/images/720x1280/err_charge.png:root/res/images/720x1280/err_charge.png \
    device/huawei/c8817d/rootdir/res/images/720x1280/full_charge.png:root/res/images/720x1280/full_charge.png \
    device/huawei/c8817d/rootdir/res/images/720x1280/number_0.png:root/res/images/720x1280/number_0.png \
    device/huawei/c8817d/rootdir/res/images/720x1280/number_1.png:root/res/images/720x1280/number_1.png \
    device/huawei/c8817d/rootdir/res/images/720x1280/number_2.png:root/res/images/720x1280/number_2.png \
    device/huawei/c8817d/rootdir/res/images/720x1280/number_3.png:root/res/images/720x1280/number_3.png \
    device/huawei/c8817d/rootdir/res/images/720x1280/number_4.png:root/res/images/720x1280/number_4.png \
    device/huawei/c8817d/rootdir/res/images/720x1280/number_5.png:root/res/images/720x1280/number_5.png \
    device/huawei/c8817d/rootdir/res/images/720x1280/number_6.png:root/res/images/720x1280/number_6.png \
    device/huawei/c8817d/rootdir/res/images/720x1280/number_7.png:root/res/images/720x1280/number_7.png \
    device/huawei/c8817d/rootdir/res/images/720x1280/number_8.png:root/res/images/720x1280/number_8.png \
    device/huawei/c8817d/rootdir/res/images/720x1280/number_9.png:root/res/images/720x1280/number_9.png \
    device/huawei/c8817d/rootdir/res/images/720x1280/percent_10.png:root/res/images/720x1280/percent_10.png \
    device/huawei/c8817d/rootdir/res/images/720x1280/percent_5.png:root/res/images/720x1280/percent_5.png \
    device/huawei/c8817d/rootdir/res/images/720x1280/percent_sign.png:root/res/images/720x1280/percent_sign.png \
    device/huawei/c8817d/rootdir/res/images/mmi/fail.png:root/res/images/mmi/fail.png \
    device/huawei/c8817d/rootdir/res/images/mmi/pass.png:root/res/images/mmi/pass.png

# Sound param
PRODUCT_COPY_FILES += \
    device/huawei/c8817d/rootdir/etc/sound_param/c8817d/Bluetooth_cal.acdb:system/etc/sound_param/c8817d/Bluetooth_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/c8817d/General_cal.acdb:system/etc/sound_param/c8817d/General_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/c8817d/Global_cal.acdb:system/etc/sound_param/c8817d/Global_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/c8817d/Handset_cal.acdb:system/etc/sound_param/c8817d/Handset_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/c8817d/Hdmi_cal.acdb:system/etc/sound_param/c8817d/Hdmi_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/c8817d/Headset_cal.acdb:system/etc/sound_param/c8817d/c8817d/Headset_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/c8817d/Speaker_cal.acdb:system/etc/sound_param/c8817d/Speaker_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/c8817d/mixer_paths.xml:system/etc/sound_param/c8817d/mixer_paths.xml \
    device/huawei/c8817d/rootdir/etc/sound_param/c8817e/Bluetooth_cal.acdb:system/etc/sound_param/c8817e/Bluetooth_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/c8817e/General_cal.acdb:system/etc/sound_param/c8817e/General_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/c8817e/Global_cal.acdb:system/etc/sound_param/c8817e/Global_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/c8817e/Handset_cal.acdb:system/etc/sound_param/c8817e/Handset_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/c8817e/Hdmi_cal.acdb:system/etc/sound_param/c8817e/Hdmi_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/c8817e/Headset_cal.acdb:system/etc/sound_param/c8817e/Headset_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/c8817e/Speaker_cal.acdb:system/etc/sound_param/c8817e/Speaker_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/c8817e/mixer_paths.xml:system/etc/sound_param/c8817e/mixer_paths.xml \
    device/huawei/c8817d/rootdir/etc/sound_param/cherry/Bluetooth_cal.acdb:system/etc/sound_param/cherry/Bluetooth_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/cherry/General_cal.acdb:system/etc/sound_param/cherry/General_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/cherry/Global_cal.acdb:system/etc/sound_param/cherry/Global_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/cherry/Handset_cal.acdb:system/etc/sound_param/cherry/Handset_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/cherry/Hdmi_cal.acdb:system/etc/sound_param/cherry/Hdmi_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/cherry/Headset_cal.acdb:system/etc/sound_param/cherry/Headset_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/cherry/Speaker_cal.acdb:system/etc/sound_param/cherry/Speaker_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/cherry/mixer_paths.xml:system/etc/sound_param/cherry/mixer_paths.xml \
    device/huawei/c8817d/rootdir/etc/sound_param/default/Bluetooth_cal.acdb:system/etc/sound_param/default/Bluetooth_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/default/General_cal.acdb:system/etc/sound_param/default/General_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/default/Global_cal.acdb:system/etc/sound_param/default/Global_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/default/Handset_cal.acdb:system/etc/sound_param/default/Handset_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/default/Hdmi_cal.acdb:system/etc/sound_param/default/Hdmi_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/default/Headset_cal.acdb:system/etc/sound_param/default/Headset_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/default/Speaker_cal.acdb:system/etc/sound_param/default/Speaker_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/default/mixer_paths.xml:system/etc/sound_param/default/mixer_paths.xml \
    device/huawei/c8817d/rootdir/etc/sound_param/g611_ul/Bluetooth_cal.acdb:system/etc/sound_param/g611_ul/Bluetooth_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g611_ul/General_cal.acdb:system/etc/sound_param/g611_ul/General_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g611_ul/Global_cal.acdb:system/etc/sound_param/g611_ul/Global_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g611_ul/Handset_cal.acdb:system/etc/sound_param/g611_ul/Handset_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g611_ul/Hdmi_cal.acdb:system/etc/sound_param/g611_ul/Hdmi_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g611_ul/Headset_cal.acdb:system/etc/sound_param/g611_ul/Headset_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g611_ul/Speaker_cal.acdb:system/etc/sound_param/g611_ul/Speaker_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g611_ul/mixer_paths.xml:system/etc/sound_param/g611_ul/mixer_paths.xml \
    device/huawei/c8817d/rootdir/etc/sound_param/g619_tl/Bluetooth_cal.acdb:system/etc/sound_param/g619_tl/Bluetooth_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g619_tl/General_cal.acdb:system/etc/sound_param/g619_tl/General_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g619_tl/Global_cal.acdb:system/etc/sound_param/g619_tl/Global_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g619_tl/Handset_cal.acdb:system/etc/sound_param/g619_tl/Handset_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g619_tl/Hdmi_cal.acdb:system/etc/sound_param/g619_tl/Hdmi_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g619_tl/Headset_cal.acdb:system/etc/sound_param/g619_tl/Headset_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g619_tl/Speaker_cal.acdb:system/etc/sound_param/g619_tl/Speaker_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g619_tl/mixer_paths.xml:system/etc/sound_param/g619_tl/mixer_paths.xml \
    device/huawei/c8817d/rootdir/etc/sound_param/g620s_l03/Bluetooth_cal.acdb:system/etc/sound_param/g620s_l03/Bluetooth_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g620s_l03/General_cal.acdb:system/etc/sound_param/g620s_l03/General_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g620s_l03/Global_cal.acdb:system/etc/sound_param/g620s_l03/Global_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g620s_l03/Handset_cal.acdb:system/etc/sound_param/g620s_l03/Handset_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g620s_l03/Hdmi_cal.acdb:system/etc/sound_param/g620s_l03/Hdmi_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g620s_l03/Headset_cal.acdb:system/etc/sound_param/g620s_l03/Headset_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g620s_l03/Speaker_cal.acdb:system/etc/sound_param/g620s_l03/Speaker_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g620s_l03/mixer_paths.xml:system/etc/sound_param/g620s_l03/mixer_paths.xml \
    device/huawei/c8817d/rootdir/etc/sound_param/g620s_ul/Bluetooth_cal.acdb:system/etc/sound_param/g620s_ul/Bluetooth_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g620s_ul/General_cal.acdb:system/etc/sound_param/g620s_ul/General_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g620s_ul/Global_cal.acdb:system/etc/sound_param/g620s_ul/Global_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g620s_ul/Handset_cal.acdb:system/etc/sound_param/g620s_ul/Handset_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g620s_ul/Hdmi_cal.acdb:system/etc/sound_param/g620s_ul/Hdmi_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g620s_ul/Headset_cal.acdb:system/etc/sound_param/g620s_ul/Headset_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g620s_ul/Speaker_cal.acdb:system/etc/sound_param/g620s_ul/Speaker_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g620s_ul/mixer_paths.xml:system/etc/sound_param/g620s_ul/mixer_paths.xml \
    device/huawei/c8817d/rootdir/etc/sound_param/g621_tl/Bluetooth_cal.acdb:system/etc/sound_param/g621_tl/Bluetooth_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g621_tl/General_cal.acdb:system/etc/sound_param/g621_tl/General_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g621_tl/Global_cal.acdb:system/etc/sound_param/g621_tl/Global_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g621_tl/Handset_cal.acdb:system/etc/sound_param/g621_tl/Handset_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g621_tl/Hdmi_cal.acdb:system/etc/sound_param/g621_tl/Hdmi_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g621_tl/Headset_cal.acdb:system/etc/sound_param/g621_tl/Headset_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g621_tl/Speaker_cal.acdb:system/etc/sound_param/g621_tl/Speaker_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g621_tl/mixer_paths.xml:system/etc/sound_param/g621_tl/mixer_paths.xml \
    device/huawei/c8817d/rootdir/etc/sound_param/g622_cl/Bluetooth_cal.acdb:system/etc/sound_param/g622_cl/Bluetooth_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g622_cl/General_cal.acdb:system/etc/sound_param/g622_cl/General_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g622_cl/Global_cal.acdb:system/etc/sound_param/g622_cl/Global_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g622_cl/Handset_cal.acdb:system/etc/sound_param/g622_cl/Handset_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g622_cl/Hdmi_cal.acdb:system/etc/sound_param/g622_cl/Hdmi_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g622_cl/Headset_cal.acdb:system/etc/sound_param/g622_cl/Headset_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g622_cl/Speaker_cal.acdb:system/etc/sound_param/g622_cl/Speaker_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g622_cl/mixer_paths.xml:system/etc/sound_param/g622_cl/mixer_paths.xml \
    device/huawei/c8817d/rootdir/etc/sound_param/g760_l01/Bluetooth_cal.acdb:system/etc/sound_param/g760_l01/Bluetooth_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g760_l01/General_cal.acdb:system/etc/sound_param/g760_l01/General_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g760_l01/Global_cal.acdb:system/etc/sound_param/g760_l01/Global_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g760_l01/Handset_cal.acdb:system/etc/sound_param/g760_l01/Handset_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g760_l01/Hdmi_cal.acdb:system/etc/sound_param/g760_l01/Hdmi_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g760_l01/Headset_cal.acdb:system/etc/sound_param/g760_l01/Headset_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g760_l01/Speaker_cal.acdb:system/etc/sound_param/g760_l01/Speaker_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g760_l01/mixer_paths.xml:system/etc/sound_param/g760_l01/mixer_paths.xml \
    device/huawei/c8817d/rootdir/etc/sound_param/g760_utl/Bluetooth_cal.acdb:system/etc/sound_param/g760_utl/Bluetooth_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g760_utl/General_cal.acdb:system/etc/sound_param/g760_utl/General_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g760_utl/Global_cal.acdb:system/etc/sound_param/g760_utl/Global_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g760_utl/Handset_cal.acdb:system/etc/sound_param/g760_utl/Handset_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g760_utl/Hdmi_cal.acdb:system/etc/sound_param/g760_utl/Hdmi_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g760_utl/Headset_cal.acdb:system/etc/sound_param/g760_utl/Headset_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g760_utl/Speaker_cal.acdb:system/etc/sound_param/g760_utl/Speaker_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/g760_utl/mixer_paths.xml:system/etc/sound_param/g760_utl/mixer_paths.xml \
    device/huawei/c8817d/rootdir/etc/sound_param/y550/Bluetooth_cal.acdb:system/etc/sound_param/y550/Bluetooth_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/y550/General_cal.acdb:system/etc/sound_param/y550/General_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/y550/Global_cal.acdb:system/etc/sound_param/y550/Global_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/y550/Handset_cal.acdb:system/etc/sound_param/y550/Handset_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/y550/Hdmi_cal.acdb:system/etc/sound_param/y550/Hdmi_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/y550/Headset_cal.acdb:system/etc/sound_param/y550/Headset_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/y550/Speaker_cal.acdb:system/etc/sound_param/y550/Speaker_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/y550/mixer_paths.xml:system/etc/sound_param/y550/mixer_paths.xml \
    device/huawei/c8817d/rootdir/etc/sound_param/y550_l01_vb/Bluetooth_cal.acdb:system/etc/sound_param/y550_l01_vb/Bluetooth_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/y550_l01_vb/General_cal.acdb:system/etc/sound_param/y550_l01_vb/General_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/y550_l01_vb/Global_cal.acdb:system/etc/sound_param/y550_l01_vb/Global_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/y550_l01_vb/Handset_cal.acdb:system/etc/sound_param/y550_l01_vb/Handset_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/y550_l01_vb/Hdmi_cal.acdb:system/etc/sound_param/y550_l01_vb/Hdmi_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/y550_l01_vb/Headset_cal.acdb:system/etc/sound_param/y550_l01_vb/Headset_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/y550_l01_vb/Speaker_cal.acdb:system/etc/sound_param/y550_l01_vb/Speaker_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/y550_l01_vb/mixer_paths.xml:system/etc/sound_param/y550_l01_vb/mixer_paths.xml \
    device/huawei/c8817d/rootdir/etc/sound_param/y550_l01_vc/Bluetooth_cal.acdb:system/etc/sound_param/y550_l01_vc/Bluetooth_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/y550_l01_vc/General_cal.acdb:system/etc/sound_param/y550_l01_vc/General_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/y550_l01_vc/Global_cal.acdb:system/etc/sound_param/y550_l01_vc/Global_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/y550_l01_vc/Handset_cal.acdb:system/etc/sound_param/y550_l01_vc/Handset_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/y550_l01_vc/Hdmi_cal.acdb:system/etc/sound_param/y550_l01_vc/Hdmi_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/y550_l01_vc/Headset_cal.acdb:system/etc/sound_param/y550_l01_vc/Headset_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/y550_l01_vc/Speaker_cal.acdb:system/etc/sound_param/y550_l01_vc/Speaker_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/y550_l01_vc/mixer_paths.xml:system/etc/sound_param/y550_l01_vc/mixer_paths.xml \
    device/huawei/c8817d/rootdir/etc/sound_param/y550_vc/Bluetooth_cal.acdb:system/etc/sound_param/y550_vc/Bluetooth_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/y550_vc/General_cal.acdb:system/etc/sound_param/y550_vc/General_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/y550_vc/Global_cal.acdb:system/etc/sound_param/y550_vc/Global_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/y550_vc/Handset_cal.acdb:system/etc/sound_param/y550_vc/Handset_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/y550_vc/Hdmi_cal.acdb:system/etc/sound_param/y550_vc/Hdmi_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/y550_vc/Headset_cal.acdb:system/etc/sound_param/y550_vc/Headset_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/y550_vc/Speaker_cal.acdb:system/etc/sound_param/y550_vc/Speaker_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/y550_vc/mixer_paths.xml:system/etc/sound_param/y550_vc/mixer_paths.xml \
    device/huawei/c8817d/rootdir/etc/sound_param/y630/Bluetooth_cal.acdb:system/etc/sound_param/y630/Bluetooth_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/y630/General_cal.acdb:system/etc/sound_param/y630/General_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/y630/Global_cal.acdb:system/etc/sound_param/y630/Global_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/y630/Handset_cal.acdb:system/etc/sound_param/y630/Handset_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/y630/Hdmi_cal.acdb:system/etc/sound_param/y630/Hdmi_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/y630/Headset_cal.acdb:system/etc/sound_param/y630/Headset_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/y630/Speaker_cal.acdb:system/etc/sound_param/y630/Speaker_cal.acdb \
    device/huawei/c8817d/rootdir/etc/sound_param/y630/mixer_paths.xml:system/etc/sound_param/y630/mixer_paths.xml

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml

# Feature definition files for msm8916
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml

# Screen density
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# ANT+ stack
PRODUCT_PACKAGES += \
    AntHalService \
    libantradio \
    antradio_app

# Audio
PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    audio.primary.msm8916 \
    audio_policy.msm8916 \
    libaudio-resampler

# Display
PRODUCT_PACKAGES += \
    copybit.msm8916 \
    gralloc.msm8916 \
    libmemalloc \
    memtrack.msm8916 \
    hwcomposer.msm8916 \
    liboverlay \
    libgenlock \
    libqdutils \
    libqdMetaData

# Ebtables
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc

# Filesystem management tools
PRODUCT_PACKAGES += \
    e2fsck \
    fibmap.f2fs \
    fsck.f2fs \
    make_ext4fs \
    mkfs.f2fs \
    resize2fs \
    setup_fs

# Flatland
PRODUCT_PACKAGES += \
    flatland

# FM
PRODUCT_PACKAGES += \
    FM2 \
    FMRecord \
    libqcomfm_jni \
    qcom.fmradio

#fstab.qcom
PRODUCT_PACKAGES += \
    fstab.qcom

PRODUCT_PACKAGES += \
    libqcomvisualizer \
    libqcompostprocbundle

# GPS
PRODUCT_PACKAGES += \
    libgps.utils \
    libloc_eng \
    libloc_api_v02 \
    libloc_adapter

# Lights
PRODUCT_PACKAGES += \
    lights.msm8916

# Keylayout
PRODUCT_PACKAGES += \
    gpio-keys.kl \
    synaptics_rmi4_i2c.kl

# Keystore
PRODUCT_PACKAGES += \
    keystore.msm8916

#OEM Services library
PRODUCT_PACKAGES += \
    oem-services \
    libsubsystem_control \
    libSubSystemShutdown

# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libdashplayer \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVdecHevc \
    libOmxVenc \
    libstagefrighthw \
    qcmediaplayer

PRODUCT_BOOT_JARS += \
    qcmediaplayer

# Power HAL
PRODUCT_PACKAGES += \
    power.msm8916

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

# Recovery
PRODUCT_PACKAGES += \
    recoverylog.sh \
    minivold

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
    init.qcom.wifi.sh \
    init.qcom.modem_links.sh \
    init.qcom.rootagent.sh \
    init.qcom.uicc.sh

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
    init.target.rc \
    ueventd.qcom.rc \
    init.device.rc

#spec service
PRODUCT_PACKAGES += \
    init.qti.carrier.rc

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Wifi
PRODUCT_PACKAGES += \
    libcurl \
    wcnss_service

PRODUCT_PACKAGES += \
    hostapd.accept \
    hostapd.deny \
    hostapd_default.conf

PRODUCT_PACKAGES += \
    wpa_supplicant_overlay.conf \
    p2p_supplicant_overlay.conf

# Set this device to DSDS as default.
ADDITIONAL_BUILD_PROPERTIES += persist.radio.multisim.config=dsds

PRODUCT_PROPERTY_OVERRIDES += \
       dalvik.vm.heapgrowthlimit=128m

#Set default profile to FUT
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.logkit.ctrlcode=1

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# appops configuration
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.strict_op_enable=false

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.whitelist=/system/etc/whitelist_appops.xml

PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/vendor/lib/libqc-opt.so \
    persist.radio.apm_sim_not_pwdn=1

$(call inherit-product, build/target/product/full.mk)

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

$(call inherit-product-if-exists, vendor/huawei/c8817d/c8817d-vendor.mk)

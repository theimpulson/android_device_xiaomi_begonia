#
# Copyright (C) 2019 The Potato Open Sauce Project
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/begonia

# Set Shipping API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from common device makefile
$(call inherit-product, device/xiaomi/mt6785-common/mt6785.mk)

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_begonia/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.ese.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_begonia/android.hardware.nfc.ese.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_begonia/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.hcef.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_begonia/android.hardware.nfc.hcef.xml \
    frameworks/native/data/etc/android.hardware.nfc.uicc.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_begonia/android.hardware.nfc.uicc.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_begonia/com.android.nfc_extras.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_begonia/com.nxp.mifare.xml

# NFC
PRODUCT_PACKAGES += \
    NfcNci \
    Tag \
    com.android.nfc_extras

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/nfc/libnfc-nci.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nci.conf \
    $(DEVICE_PATH)/nfc/libnfc-nxp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp.conf \
    $(DEVICE_PATH)/nfc/libese-nxp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libese-nxp.conf \
    $(DEVICE_PATH)/nfc/libnfc-nxp_RF.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp_RF.conf \
    $(DEVICE_PATH)/nfc/libnfc-nxp-pnscr.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp-pnscr.conf \
    $(DEVICE_PATH)/nfc/sn100u_bootup.pnscr:$(TARGET_COPY_OUT_VENDOR)/etc/sn100u_bootup.pnscr \
    $(DEVICE_PATH)/nfc/sn100u_ese_disableIso.pnscr:$(TARGET_COPY_OUT_VENDOR)/etc/sn100u_ese_disableIso.pnscr \
    $(DEVICE_PATH)/nfc/sn100u_ese_disableIsoRead.pnscr:$(TARGET_COPY_OUT_VENDOR)/etc/sn100u_ese_disableIsoRead.pnscr \
    $(DEVICE_PATH)/nfc/sn100u_nfcon.pnscr:$(TARGET_COPY_OUT_VENDOR)/etc/sn100u_nfcon.pnscr \
    $(DEVICE_PATH)/nfc/sn100u_pnx_chr.pnscr:$(TARGET_COPY_OUT_VENDOR)/etc/sn100u_pnx_chr.pnscr \
    $(DEVICE_PATH)/nfc/sn100u_pnx_cui.pnscr:$(TARGET_COPY_OUT_VENDOR)/etc/sn100u_pnx_cui.pnscr \
    $(DEVICE_PATH)/nfc/sn100u_pnx_ese_3.pnscr:$(TARGET_COPY_OUT_VENDOR)/etc/sn100u_pnx_ese_3.pnscr \
    $(DEVICE_PATH)/nfc/sn100u_pnx_ese_aclog.pnscr:$(TARGET_COPY_OUT_VENDOR)/etc/sn100u_pnx_ese_aclog.pnscr \
    $(DEVICE_PATH)/nfc/sn100u_pnx_ese_cplc.pnscr:$(TARGET_COPY_OUT_VENDOR)/etc/sn100u_pnx_ese_cplc.pnscr \
    $(DEVICE_PATH)/nfc/sn100u_pnx_ese_fabkey.pnscr:$(TARGET_COPY_OUT_VENDOR)/etc/sn100u_pnx_ese_fabkey.pnscr \
    $(DEVICE_PATH)/nfc/sn100u_pnx_ese_free.pnscr:$(TARGET_COPY_OUT_VENDOR)/etc/sn100u_pnx_ese_free.pnscr \
    $(DEVICE_PATH)/nfc/sn100u_pnx_ese_keyset.pnscr:$(TARGET_COPY_OUT_VENDOR)/etc/sn100u_pnx_ese_keyset.pnscr \
    $(DEVICE_PATH)/nfc/sn100u_pnx_ese_sn.pnscr:$(TARGET_COPY_OUT_VENDOR)/etc/sn100u_pnx_ese_sn.pnscr \
    $(DEVICE_PATH)/nfc/sn100u_pnx_ndi.pnscr:$(TARGET_COPY_OUT_VENDOR)/etc/sn100u_pnx_ndi.pnscr \
    $(DEVICE_PATH)/nfc/sn100u_pnx_pcv.pnscr:$(TARGET_COPY_OUT_VENDOR)/etc/sn100u_pnx_pcv.pnscr \
    $(DEVICE_PATH)/nfc/sn100u_pnx_sst.pnscr:$(TARGET_COPY_OUT_VENDOR)/etc/sn100u_pnx_sst.pnscr

# Inherit vendor
$(call inherit-product, vendor/xiaomi/begonia/begonia-vendor.mk)

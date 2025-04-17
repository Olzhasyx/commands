#!/bin/bash

rm -rf .repo/local_manifests; \

repo init -u https://github.com/Evolution-X/manifest -b vic --git-lfs
#repo init --depth=1 -u https://github.com/LineageOS/android.git -b lineage-22.1 --git-lfs; \
#repo init --depth=1 -u https://github.com/crdroidandroid/android -b 15.0 --git-lfs; \
#repo init --depth=1 -u https://github.com/ProjectInfinity-X/manifest -b 15 --git-lfs; \
#repo init --depth=1 -u https://github.com/ProjectMatrixx/android -b 15.0 --git-lfs; \
#repo init --depth=1 -u https://github.com/RisingOS-Revived/android -b fifteen --git-lfs; \
#repo init -u https://github.com/AxionAOSP/android.git -b lineage-22.2 --git-lfs; \

/opt/crave/resync.sh; \

rm -rf out/target/product/munch && rm -rf device/xiaomi/munch && rm -rf device/xiaomi/sm8250-common && rm -rf kernel/xiaomi/sm8250; \
rm -rf vendor/xiaomi/munch && rm -rf vendor/xiaomi/sm8250-common && rm -rf hardware/xiaomi && rm -rf vendor/xiaomi/munch-firmware; \
rm -rf vendor/xiaomi/miuicamera && rm -rf packages/resources/devicesettings && rm -rf packages/apps/ViPER4AndroidFX; \

# Rik trees
#git clone https://github.com/Prythomn/-RIK-device_xiaomi_munch device/xiaomi/munch; \
#git clone https://github.com/Prythomn/-RIK-device_xiaomi_sm8250-common device/xiaomi/sm8250-common; \
#git clone https://github.com/Prythomn/kernel_xiaomi_sm8250.git kernel/xiaomi/sm8250; \
#git clone https://codeberg.org/rik/vendor_xiaomi_munch.git vendor/xiaomi/munch; \
#git clone https://github.com/Prythomn/vendor_xiaomi_sm8250-common vendor/xiaomi/sm8250-common; \
#git clone https://github.com/LineageOS/android_hardware_xiaomi.git -b lineage-22.1 hardware/xiaomi; \
#git clone https://codeberg.org/munch-devs/android_vendor_xiaomi_miuicamera.git -b vic vendor/xiaomi/miuicamera; \
#git clone https://codeberg.org/rik/packages_resources_devicesettings.git packages/resources/devicesettings; \
#git clone https://github.com/TogoFire/packages_apps_ViPER4AndroidFX.git packages/apps/ViPER4AndroidFX; \

# HdZungx trees
git clone https://github.com/Prythomn/-HD-android_device_xiaomi_munch device/xiaomi/munch; \
git clone https://github.com/munch-devs/kernel_xiaomi_sm8250.git -b perf kernel/xiaomi/munch; \
git clone https://github.com/munch-devs/android_vendor_xiaomi_munch.git vendor/xiaomi/munch; \
git clone https://github.com/munch-devs/android_hardware_xiaomi.git hardware/xiaomi; \

. b*/e* && lunch infinity_munch-userdebug && mka bacon

#rm -rf vendor/lineage-priv/keys && rm -rf vendor/infinity-priv/keys; \

#git clone https://codeberg.org/rik/keys.git vendor/lineage-priv/keys; \
#git clone https://codeberg.org/rik/keys.git -b inf vendor/infinity-priv/keys; \

#. build/envsetup.sh; \
#breakfast munch user; \
#mka bacon
#brunch munch
#lunch infinity_munch-userdebug && mka bacon; \
#riseup munch userdebug && rise b

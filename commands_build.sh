#!/bin/bash

rm -rf .repo/local_manifests; \

repo init --depth=1 -u https://github.com/crdroidandroid/android -b 15.0 --git-lfs; \
#repo init --depth=1 -u https://github.com/ProjectInfinity-X/manifest -b 15 --git-lfs; \
#repo init --depth=1 -u https://github.com/ProjectMatrixx/android -b 15.0 --git-lfs; \
#repo init --depth=1 -u https://github.com/RisingOS-Revived/android -b fifteen --git-lfs; \

/opt/crave/resync.sh; \

rm -rf out/target/product/munch && rm -rf device/xiaomi/munch && rm -rf device/xiaomi/sm8250-common && rm -rf kernel/xiaomi/sm8250; \
rm -rf vendor/xiaomi/munch && rm -rf vendor/xiaomi/sm8250-common && rm -rf hardware/xiaomi && rm -rf vendor/xiaomi/munch-firmware; \
rm -rf vendor/xiaomi/miuicamera && rm -rf packages/resources/devicesettings && rm -rf packages/apps/ViPER4AndroidFX; \

git clone https://github.com/Prythomn/-HD-android_device_xiaomi_munch.git device/xiaomi/munch; \

git clone https://github.com/AnkitSavani111/android_kernel_xiaomi_sm8250 kernel/xiaomi/sm8250; \

git clone https://github.com/Prythomn/-hd-android_vendor_xiaomi_munch.git vendor/xiaomi/munch; \

git clone https://github.com/Prythomn/-HD-android_hardware_xiaomi.git hardware/xiaomi; \

git clone https://codeberg.org/munch-devs/android_vendor_xiaomi_miuicamera.git -b vic vendor/xiaomi/miuicamera; \

git clone https://github.com/TogoFire/packages_apps_ViPER4AndroidFX.git packages/apps/ViPER4AndroidFX; \

rm -rf vendor/lineage-priv/keys && rm -rf vendor/infinity-priv/keys; \

#git clone https://codeberg.org/rik/keys.git -b inf vendor/infinity-priv/keys; \

. build/envsetup.sh; \

brunch munch
#lunch infinity_munch-userdebug && mka bacon; \
#riseup munch userdebug && rise b

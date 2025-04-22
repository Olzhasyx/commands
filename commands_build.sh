#!/bin/bash

rm -rf .repo/local_manifests; \

repo init --depth=1 -u https://github.com/PixelOS-AOSP/manifest.git -b fifteen --git-lfs

/opt/crave/resync.sh; \

rm -rf out/target/product/munch && rm -rf device/xiaomi/munch && rm -rf device/xiaomi/sm8250-common && rm -rf kernel/xiaomi/munch; \
rm -rf vendor/xiaomi/munch && rm -rf vendor/xiaomi/sm8250-common && rm -rf hardware/xiaomi && rm -rf vendor/xiaomi/munch-firmware; \
rm -rf vendor/xiaomi/miuicamera && rm -rf packages/resources/devicesettings && rm -rf packages/apps/ViPER4AndroidFX; \

git clone https://github.com/Olzhasyx/-hdzung-android_device_xiaomi_munch.git device/xiaomi/munch; \

git clone https://github.com/munch-devs/kernel_xiaomi_sm8250.git kernel/xiaomi/munch; \

git clone https://github.com/munch-devs/android_vendor_xiaomi_munch.git vendor/xiaomi/munch; \

git clone https://github.com/Olzhasyx/android_hardware_xiaomi.git hardware/xiaomi; \

git clone https://github.com/PocoF3Releases/packages_resources_devicesettings.git packages/resources/devicesettings; \

git clone https://codeberg.org/munch-devs/android_vendor_xiaomi_miuicamera.git -b vic vendor/xiaomi/miuicamera; \

git clone https://github.com/TogoFire/packages_apps_ViPER4AndroidFX.git packages/apps/ViPER4AndroidFX; \
export BUILD_USERNAME=olzhas0986
export BUILD_HOSTNAME=crave
source build/envsetup.sh; \
lunch aosp_munch-bp1a-user; \
mka bacon


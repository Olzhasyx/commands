#!/bin/bash

rm -rf .repo/local_manifests; \

export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
ccache -M 50G

repo init -u https://github.com/RisingOS-Revived/android -b qpr2 --git-lfs; \

/opt/crave/resync.sh; \

rm -rf out/target/product/munch && rm -rf device/xiaomi/munch && rm -rf device/xiaomi/sm8250-common && rm -rf vendor/xiaomi/munch && rm -rf vendor/xiaomi/sm8250-common && rm -rf hardware/xiaomi && rm -rf vendor/xiaomi/munch-firmware; \
rm -rf vendor/xiaomi/miuicamera && rm -rf packages/resources/devicesettings && rm -rf packages/apps/ViPER4AndroidFX && rm -rf kernel/xiaomi/munch && rm -rf kernel/xiaomi/sm8250; \

git clone https://github.com/Olzhasyx/rik_munch device/xiaomi/munch; \
git clone https://github.com/Olzhasyx/rik_sm8250-common device/xiaomi/sm8250-common; \
git clone https://github.com/munch-devs/kernel_xiaomi_sm8250.git kernel/xiaomi/sm8250; \
git clone https://codeberg.org/rik/vendor_xiaomi_munch.git vendor/xiaomi/munch; \
git clone https://codeberg.org/rik/vendor_xiaomi_sm8250-common.git vendor/xiaomi/sm8250-common; \
git clone https://github.com/LineageOS/android_hardware_xiaomi.git -b lineage-22.2 hardware/xiaomi; \
git clone https://codeberg.org/rik/vendor_xiaomi_munch-firmware.git vendor/xiaomi/munch-firmware; \
git clone https://github.com/PocoF3Releases/packages_resources_devicesettings.git packages/resources/devicesettings; \
git clone https://codeberg.org/munch-devs/android_vendor_xiaomi_miuicamera.git -b vic vendor/xiaomi/miuicamera; \
git clone https://github.com/TogoFire/packages_apps_ViPER4AndroidFX.git packages/apps/ViPER4AndroidFX; \

export BUILD_USERNAME=olzhas0986

. build/envsetup.sh; \
riseup munch userdebug; \
rise b

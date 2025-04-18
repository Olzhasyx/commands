#!/bin/bash

rm -rf .repo/local_manifests; \

repo init -u https://github.com/LineageOS/android.git -b lineage-22.1 --git-lfs; \

/opt/crave/resync.sh; \

rm -rf out/target/product/munch && rm -rf device/xiaomi/munch && rm -rf device/xiaomi/sm8250-common && rm -rf kernel/xiaomi/sm8250; \
rm -rf vendor/xiaomi/munch && rm -rf vendor/xiaomi/sm8250-common && rm -rf hardware/xiaomi && rm -rf vendor/xiaomi/munch-firmware; \
rm -rf vendor/xiaomi/miuicamera && rm -rf packages/resources/devicesettings && rm -rf packages/apps/ViPER4AndroidFX; \

git clone https://codeberg.org/rik/device_xiaomi_munch.git device/xiaomi/munch; \
git clone https://github.com/Olzhasyx/adxsm8250 device/xiaomi/sm8250-common; \
git clone https://codeberg.org/rik/kernel_xiaomi_sm8250.git kernel/xiaomi/sm8250; \
git clone https://codeberg.org/rik/vendor_xiaomi_munch.git vendor/xiaomi/munch; \
git clone https://codeberg.org/rik/vendor_xiaomi_sm8250-common.git vendor/xiaomi/sm8250-common; \
git clone https://github.com/LineageOS/android_hardware_xiaomi.git -b lineage-22.1 hardware/xiaomi; \
git clone https://codeberg.org/rik/vendor_xiaomi_munch-firmware.git vendor/xiaomi/munch-firmware; \
git clone https://codeberg.org/munch-devs/android_vendor_xiaomi_miuicamera.git -b vic vendor/xiaomi/miuicamera; \
git clone https://codeberg.org/rik/packages_resources_devicesettings.git packages/resources/devicesettings; \
git clone https://github.com/TogoFire/packages_apps_ViPER4AndroidFX.git packages/apps/ViPER4AndroidFX; \

rm -rf vendor/lineage-priv/keys && rm -rf vendor/infinity-priv/keys; \

git clone https://codeberg.org/rik/keys.git vendor/lineage-priv/keys; \

. build/envsetup.sh; \

brunch munch

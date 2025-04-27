#!/bin/bash

rm -rf .repo/local_manifests; \

#repo init -u https://github.com/RisingOS-Revived/android -b fifteen --git-lfs; \
#repo init -u https://github.com/RisingOS-Revived/android --git-lfs; \
#repo init -u https://github.com/LineageOS/android.git -b lineage-22.2 --git-lfs; \
#repo init -u https://github.com/ProjectMatrixx/android.git -b 15.0 --git-lfs; \
repo init -u https://github.com/Evolution-X/manifest -b vic --git-lfs; \

/opt/crave/resync.sh; \

rm -rf out/target/product/munch && rm -rf device/xiaomi/munch && rm -rf device/xiaomi/sm8250-common && rm -rf vendor/xiaomi/munch && rm -rf vendor/xiaomi/sm8250-common && rm -rf hardware/xiaomi && rm -rf vendor/xiaomi/munch-firmware; \
rm -rf vendor/xiaomi/miuicamera && rm -rf packages/resources/devicesettings && rm -rf packages/apps/ViPER4AndroidFX && rm -rf kernel/xiaomi/munch && rm -rf kernel/xiaomi/sm8250; \

git clone https://github.com/Olzhasyx/android_device_xiaomi_munch device/xiaomi/munch; \

git clone https://github.com/Pureline-Kernel/pure_xiaomi_sm8250 kernel/xiaomi/munch; \

git clone https://github.com/munch-devs/android_vendor_xiaomi_munch.git vendor/xiaomi/munch; \

git clone https://github.com/munch-devs/android_hardware_xiaomi.git hardware/xiaomi; \

git clone https://github.com/PocoF3Releases/packages_resources_devicesettings.git packages/resources/devicesettings; \

git clone https://codeberg.org/munch-devs/android_vendor_xiaomi_miuicamera.git -b vic vendor/xiaomi/miuicamera; \

export BUILD_USERNAME=olzhas0986
export BUILD_HOST=crave

#sed -i 's/android\.ImageInterfaceContext/android.ModuleContext/g' system/sepolicy/build/soong/selinux_contexts.go; \
. build/envsetup.sh; \
lunch lineage_munch-bp1a-userdebug && m evolution
#croot && packages/modules/common/build/update-apex-allowed-deps.sh
#breakfast munch; \
#croot; \
#brunch munch
#riseup munch userdebug; \
#rise b

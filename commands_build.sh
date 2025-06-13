rm -rf .repo/local_manifests; \

#repo init -u https://github.com/AxionAOSP/android.git -b lineage-22.2 --git-lfs; \
#repo init -u https://github.com/crdroidandroid/android.git -b 15.0 --git-lfs; \
#repo init -u https://github.com/LineageOS/android.git -b lineage-22.2 --git-lfs; \
#repo init -u https://github.com/RisingOS-Revived/android -b new --git-lfs; \
#repo init -u https://github.com/Project-Mist-OS/manifest -b vic --git-lfs; \
repo init -u https://github.com/Evolution-X/manifest -b vic --git-lfs; \

/opt/crave/resync.sh; \

rm -rf out/target/product/munch && rm -rf device/xiaomi/munch && rm -rf device/xiaomi/sm8250-common && rm -rf kernel/xiaomi/sm8250; \
rm -rf vendor/xiaomi/munch && rm -rf vendor/xiaomi/sm8250-common && rm -rf hardware/xiaomi && rm -rf vendor/xiaomi/munch-firmware; \
rm -rf vendor/xiaomi/miuicamera && rm -rf packages/resources/devicesettings && rm -rf packages/apps/ViPER4AndroidFX; \

git clone https://github.com/olzhas0986dev/device_xiaomi_munch device/xiaomi/munch; \
git clone https://github.com/olzhas0986dev/device_xiaomi_sm8250-common device/xiaomi/sm8250-common; \
git clone https://gitlab.com/rik-x777/vendor_xiaomi_munch vendor/xiaomi/munch; \
git clone https://gitlab.com/rik-x777/vendor_xiaomi_munch-firmware vendor/xiaomi/munch-firmware; \
git clone https://gitlab.com/rik-x777/vendor_xiaomi_sm8250-common.git vendor/xiaomi/sm8250-common; \
git clone https://github.com/olzhas0986dev/kernel_xiaomi_sm8250.git kernel/xiaomi/sm8250; \
git clone https://github.com/LineageOS/android_hardware_xiaomi hardware/xiaomi; \
git clone https://github.com/PocoF3Releases/packages_resources_devicesettings packages/resources/devicesettings; \
git clone https://codeberg.org/munch-devs/android_vendor_xiaomi_miuicamera vendor/xiaomi/miuicamera; \
git clone https://gitlab.com/rik-x777/packages_apps_ViPER4AndroidFX packages/apps/ViPER4AndroidFX; \
rm -rf vendor/lineage-priv/keys && rm -rf vendor/infinity-priv/keys; \

cd kernel/xiaomi/sm8250 && git submodule init && git submodule update && rm -rf KernelSU-Next/userspace/su && cd ../../..; \

. build/envsetup.sh; \

#riseup munch user; \
#rise b; \

lunch lineage_munch-bp1a-user; \
m evolution

#mistify munch user; \
#mist b 

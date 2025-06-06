rm -rf .repo/local_manifests; \

repo init -u https://github.com/AxionAOSP/android.git -b lineage-22.2 --git-lfs; \

/opt/crave/resync.sh; \

rm -rf out/target/product/munch && rm -rf device/xiaomi/munch && rm -rf device/xiaomi/sm8250-common && rm -rf kernel/xiaomi/sm8250; \
rm -rf vendor/xiaomi/munch && rm -rf vendor/xiaomi/sm8250-common && rm -rf hardware/xiaomi && rm -rf vendor/xiaomi/munch-firmware; \
rm -rf vendor/xiaomi/miuicamera && rm -rf packages/resources/devicesettings && rm -rf packages/apps/ViPER4AndroidFX; \

git clone  device/xiaomi/munch; \
git clone  device/xiaomi/sm8250-common; \
git clone https://gitlab.com/rik-x777/vendor_xiaomi_munch vendor/xiaomi/munch; \
git clone https://github.com/Olzhasyx/vendor_xiaomi_sm8250-common.git vendor/xiaomi/sm8250-common; \
git clone https://gitlab.com/rik-x777/vendor_xiaomi_munch-firmware vendor/xiaomi/munch-firmware; \
git clone  kernel/xiaomi/sm8250; \
git clone https://github.com/LineageOS/android_hardware_xiaomi hardware/xiaomi; \
git clone https://github.com/PocoF3Releases/packages_resources_devicesettings packages/resources/devicesettings; \
git clone https://gitlab.com/rik-x777/packages_apps_ViPER4AndroidFX packages/apps/ViPER4AndroidFX; \
git clone https://codeberg.org/munch-devs/android_vendor_xiaomi_miuicamera vendor/xiaomi/miuicamera; \
rm -rf vendor/lineage-priv/keys && rm -rf vendor/infinity-priv/keys; \

cd kernel/xiaomi/sm8250 && git submodule init && git submodule update && rm -rf KernelSU-Next/userspace/su && cd ../../..; \

. build/envsetup.sh; \

lunch lineage_munch-bp1a-user;
mka bacon

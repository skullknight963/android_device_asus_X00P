# Clone/Fetch Upstream Device Dependencies
# Fix source
echo "Fix source"
cd frameworks/native
git fetch https://github.com/CrisBalGreece/android_frameworks_native 12
git cherry-pick af6c19edbddf7c39f42368007cbfc3422d7493c1
cd ../..
rm -rf system/bpf
rm -rf system/netd
git clone https://github.com/mitoaprendiz/platform_system_bpf -b lineage-19.1 system/bpf
git clone https://github.com/mitoaprendiz/platform_system_netd -b lineage-19.1 system/netd
rm -rf hardware/qcom-caf/msm8996/audio
rm -rf hardware/qcom-caf/msm8996/media
rm -rf hardware/qcom-caf/msm8996/display
git clone https://github.com/LineageOS/android_hardware_qcom_media --single-branch -b lineage-19.1-caf-msm8996 hardware/qcom-caf/msm8996/media
git clone https://github.com/LineageOS/android_hardware_qcom_audio --single-branch -b lineage-19.1-caf-msm8996 hardware/qcom-caf/msm8996/audio
git clone https://github.com/LineageOS/android_hardware_qcom_display --single-branch -b lineage-19.1-caf-msm8996 hardware/qcom-caf/msm8996/display
rm -rf packages/apps/Updater/res/values
git clone https://github.com/Vhmit/Addon_Ota_X00P -b arrow packages/apps/Updater/res/values
echo ""

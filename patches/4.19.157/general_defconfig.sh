find arch/arm64/configs/vendor/ -type f -name "*_defconfig" -exec sh -c 'export defconfig_path={} && sed "s@<device_defconfig>@$defconfig_path@g" patches/general_defconfig.patch |patch -p1 ' \;
#- Apply a patch to a specific file:
#    patch path/to/file < patch.diff
#
#- Patch a file writing the result to a different file:
#    patch path/to/input_file -o path/to/output_file < patch.diff

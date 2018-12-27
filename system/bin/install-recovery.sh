#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:16420040:47f0a3ced2b25122eb1a999fc169188ccc6ab727; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:9256132:deb3510f8fd0cb1fd284c82d5e835f683c2dd0bb EMMC:/dev/block/bootdevice/by-name/recovery 47f0a3ced2b25122eb1a999fc169188ccc6ab727 16420040 deb3510f8fd0cb1fd284c82d5e835f683c2dd0bb:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

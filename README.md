# TWRP device tree for motorola moto g play (2021) (guamna)

## Status

Current state of features (from [here](https://twrp.me/faq/OfficialMaintainer.html)):

Tested on system running stock guamna android 11 rom

Touchscreens tested:
- ilitek
- himax

### Blocking checks

- [X] Correct screen/recovery size
- [X] Working Touch, screen
- [X] Backup to internal/microSD
- [X] Restore from internal/microSD
- [X] reboot to system
- [X] ADB

### Medium checks

- [X] update.zip sideload
- [ ] UI colors (red/blue inversions)
- [X] Screen goes off and on
- [ ] F2FS/EXT4 Support, exFAT/NTFS where supported
- [ ] all important partitions listed in mount/backup lists
- [ ] backup/restore to/from external (USB-OTG) storage
- [ ] [backup/restore to/from adb](https://gerrit.omnirom.org/#/c/15943/)
- [ ] decrypt /data
- [ ] Correct date

### Minor checks

- [ ] MTP export
- [ ] reboot to bootloader
- [ ] reboot to recovery
- [ ] poweroff
- [ ] battery level
- [ ] temperature
- [ ] encrypted backups
- [ ] input devices via USB (USB-OTG) - keyboard, mouse and disks
- [ ] USB mass storage export
- [ ] set brightness
- [ ] vibrate
- [ ] screenshot
- [ ] partition SD card

## Setup
```bash
repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1
mkdir .repo/local_manifests
cat > .repo/local_manifests/roomservice.xml << EOF
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
  <project name="naf419/android_device_motorola_guamna" path="device/motorola/guamna" remote="github" revision="android-12.1" />
</manifest>
EOF
repo sync
```
## Building

```bash
. build/envsetup.sh
lunch twrp_guamna-eng
mka bootimage
```

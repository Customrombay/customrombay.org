# GSI custom ROMs - what to do if my device does not have custom ROM support?
![GSI ROMs banner](/post-images/gsi_roms_1.webp)
Traditionally, custom ROMs are compiled from source code with only one specific device in mind. Sometimes, builds are released for a group of devices with very similar hardware, usually the same processor (see [Mi439](https://customrombay.org/xiaomi-Mi439/) as an example). This approach has many benefits. If you install a "conventional" custom ROM from a reputable source, you can be sure that the OS will boot, all or most of the phone's hardware will work, and that the build will be optimized for your device. However, this approach requires enormous amounts of time and work from the developers, who are usually unpaid volunteers. Because of that, not every device is supported by every custom ROM, and some devices aren't supported by any custom ROM at all! So what to do if there aren't any custom ROMs for your device? Or if your device is not supported by your favorite ROM? Consider trying GSI ROMs.

## What are GSI custom ROMs?
GSI stands for Generic System Image and was introduced by Google in 2017 with the launch of [Project Treble](https://android-developers.googleblog.com/2017/05/here-comes-treble-modular-base-for.html). Its main goal was to address the issue of OEMs (Original Equipment Manufacturers) being slow and inefficient in rolling out Android updates to their devices. To do that, Android developers introduced the separation of low-level and hardware-specific code from the rest of the OS. This modularization of system images significantly decreased the amount of work required from the OEMs to port new Android versions to their devices. However, it also ended up being a game-changer for the modding community. Developers can now create custom ROMs in the form of GSIs, which can be installed on most Android smartphones.

## Can I run a GSI ROM on my device?
In most cases, the answer to this question is *yes*. The two requirements for a device to be able to use a GSI custom ROM are:
- unlocked bootloader,
- Project Treble compatibility.

When it comes to bootloader unlocking, in most cases the matter is rather straightforward - either your device's OEM allows it or not. You can check it by with quick Google search. However, determining Treble-compatibility is not so trivial. Most devices released with Android 8.0 Oreo or newer are compatible but it's better to be careful with this assumption. To make sure your device is supported as well as to obtain more useful information regarding GSI ROMs for your device, install the [Treble Info app](https://gitlab.com/TrebleInfo/TrebleInfo). You can download it either from the [Play Store](https://play.google.com/store/apps/details?id=tk.hack5.treblecheck), [F-Droid](https://f-droid.org/en/packages/tk.hack5.treblecheck/), or [the developer's GitLab page](https://gitlab.com/TrebleInfo/TrebleInfo/-/releases).

All that said, the fact that GSI ROMs can boot on your device does not mean that they will work well. The most common issues you may encounter when using a GSI custom ROM include:
- broken Wi-Fi, Bluetooth, or mobile data support,
- lack of VoLTE (mostly Samsung devices),
- issues with reading SIM and eSIM cards,
- broken NFC support,
- broken IR blaster support,
- broken fingerprint scanner support,
- SD card slot not being functional,
- some or all cameras not being recognized,
- incorrect notch/punch hole detection.

Of course, it is highly unlikely that all of them will be present on your device. Most phones can run GSI ROMs completely fine. Generally, the above issues tend to affect Mediatek-powered devices more frequently than Qualcomm-powered ones. Moreover, hardware support for the newest devices tends to be worse than for those released 2 or more years ago. Some issues present in GSI custom ROMs can be mitigated using Magisk modules. **In rare cases, software issues might physically break your hardware and hard- or soft-brick your device. You have been warned.**

## Which custom ROMs are available as GSIs?
There are many custom ROMs available as GSIs. Some of them include GAPPS (Google apps), and some don't. An actively updated list of GSI ROMs is available [here](https://github.com/phhusson/treble_experimentations/wiki/Generic-System-Image-%28GSI%29-list). Below is a list of the most popular ones:
| GSI ROM | Status | Android version |
| ----------- | ----------- | ----------- |
| [Evolution X](https://github.com/ahnet-69/treble_evo/releases) | Unofficial | 14 |
| [DerpFest](https://github.com/boydaihungst/treble_build_derpfest/releases) | Unofficial | 14 |
| [AOSP](https://github.com/ponces/treble_build_aosp/releases) | Unofficial | 14 |
| [Project Elixir](https://projectelixiros.com/device/gsi) | Official | 13 |
| [AncientOS](https://ancientrom.xyz/download) | Official | 13 |
| [LeOS 20](https://drive.proton.me/urls/JF352AYSS4#YkXliW8T03Cp) | Official | 13 |
| [Superior OS](https://github.com/ChonDoit/treble_superior_patches/releases) | Unofficial | 13 |
| [ArrowOS](https://github.com/naz664/ArrowOS_gsi/releases) | Unofficial | 13 |
| [Cherish OS](https://github.com/ChonDoit/treble_cherishos_patches/releases) | Unofficial | 13 |
| [crDroid](https://github.com/naz664/crDroid_gsi/releases) | Unofficial | 13 |
| [SparkOS](https://github.com/naz664/SparkOS_gsi/releases/tag/v2023.10.15) | Unofficial | 13 |
| [AlphaDroid](https://github.com/ChonDoit/treble_alphadroid_patches/releases/tag/A13-v20231009) | Unofficial | 13 |
| [RisingOS](https://github.com/MisterZtr/RisingOS_gsi/releases) | Unofficial | 13 |
| [VoltageOS](https://github.com/ahnet-69/treble_voltage/releases) | Unofficial | 13 |
| [Pixel Experience (Plus)](https://github.com/ponces/treble_build_pe/releases/) | Unofficial | 13 |

## How to install a GSI custom ROM?
The steps necessary to install a GSI custom ROM may vary depending on your device and the ROM you are trying to install. **Always follow a guide provided by the ROM's developer.** Below is a general procedure that will apply to most GSI ROMs and devices. Follow it only if your device is Treble-compatible.
1. Back up all your data, [set up adb and fastboot on your PC](https://wiki.lineageos.org/adb_fastboot_guide), unlock your device's bootloader, and charge its battery to at least 50%.
1. Check if your device supports dynamic partitions. You can do it by opening the Treble Info app and going to the *Details* section: <div class="grid place-content-center"><img src="/post-images/gsi_roms_2.webp" alt="Details at Treble Info app"></div> This information will be needed later.
1. Download a GSI ROM of your choice. **Choose a build that matches your device's stock Android version or higher to ensure compatibility.** In most cases, it will come packaged as a *.img.xz* file. Extract it to *.img*.
1. Extract *vbmeta.img* from your stock ROM. This step is highly device- and vendor-specific so make sure to research this topic. <div class="grid place-content-center"><img src="/post-images/gsi_roms_3.webp" alt="Extracting vbmeta.img from the stock ROM"></div>
1. Connect your device to a PC. Reboot it to the bootloader. After enabling USB debugging, you can do it by running the following command: 
   ```bash
   adb reboot bootloader
   ```
   or by holding an appropriate configuration of power and volume buttons. If your device supports dynamic partitions, you also need to enter the *Fastbootd mode* by running:
   ```bash
   fastboot reboot fastboot
   ```
   You can verify that your device is properly recognized by the PC with the following command:
   ```bash
   fastboot devices
   ```
   If your device shows up, you can proceed to flash your files.
1. Flash *vbmeta.img*. In most cases you will need to disable AVB (Android Verified Boot) when doing this:
   ```bash
   fastboot --disable-verity --disable-verification flash vbmeta vbmeta.img
   ```
1. In most cases you will need to erase the system partition to avoid a bootloop:
   ```bash
   fastboot erase system
   ```
1. Flash the system partition:
   ```bash
   fastboot flash system GSI-FILENAME.img
   ```
   The flashing process might take several minutes to complete.
1. Factory reset your device. **This will wipe all data saved on your phone** to avoid problems with the new operating system.
   ```bash
   fastboot -w
   ```
1. Reboot to the new GSI ROM:
   ```bash
   fastboot reboot
   ```
   The first boot may take up to 10 minutes, so you need to be patient.

If the device boots successfully, you can start exploring all the features and possible bugs of the new operating system. Remember to report any issues to the developer to help in fixing them.

## References and further reading
1. Andy Betts, [How to Flash a GSI on an Android Device](https://www.makeuseof.com/how-to-install-gsi-android/)
1. Arol Wright, [What Is a GSI on Android and How Is It Different to a Custom ROM?](https://www.makeuseof.com/what-is-a-gsi-generic-system-image/)
1. Google, [Generic System Images (GSIs)](https://developer.android.com/topic/generic-system-image)
1. Pierre-Hugues HUSSON and contributors, [Generic System Image (GSI) list](https://github.com/phhusson/treble_experimentations/wiki/Generic-System-Image-(GSI)-list)

# This device isn't Play Protect certified - easy fix for Android 14 and older
After flashing a custom ROM, installing a Google Mobile Services package, or sometimes even after upgrading the OEM's Android version on your device, you may receive the following notification:
<div class="grid place-content-center"><img src="/post-images/play_protect_certification_fix_1.webp" alt="Play Protect notification"></div>
It means that your device does not pass the Google Play Protect certification test. This causes some apps not to work correctly or at all. It may also prevent you from signing in to your Google account on your device, displaying the following message if you try to do so:
<div class="grid place-content-center"><img src="/post-images/play_protect_certification_fix_2.webp" alt="Message that you cannot sign in to your Google account"></div>
But don't worry. It can be easily fixed! Just follow one of the methods listed below.

## Method 1 (no PC required)
This is the easiest method for fixing the Play Protect certification issue. It does not require using a PC and takes less than 10 minutes to complete.
1. Download the latest [Device ID .apk file](https://www.apkmirror.com/apk/evozi/device-id/device-id-1-3-2-release/). This step may not be as simple as it seems because the preinstalled browser may complain about the lack of Play Protect certification. In this case, download also [Firefox](https://www.apkmirror.com/apk/mozilla/firefox/) on another device and transfer both files to your problematic device.
1. Install the downloaded .apk file(s) using file manager. If the installation of the Device ID app fails, try following the second method from this article.
   <div class="grid place-content-center"><img src="/post-images/play_protect_certification_fix_3.webp" alt="Install Device ID window"></div>
1. Open the Device ID app. Find the *Google Service Framework (GSF)* value, tap on it and copy it to the clipboard.
   <div class="grid place-content-center"><img src="/post-images/play_protect_certification_fix_4.webp" alt="Google Service Framework (GSF) in Device ID"></div>
1. Go to [www.google.com/android/uncertified/](https://www.google.com/android/uncertified/). Log in with your Google account, paste the value from your clipboard, and complete the captcha test. Then click *Register*.
   <div class="grid place-content-center"><img src="/post-images/play_protect_certification_fix_5.webp" alt="Registering your device ID"></div>
1. Go to *Settings -> Apps -> All apps*. Find *Google Play Services* and *Google Play Store*. Force stop them and clear their cache & storage.
   <div class="grid place-content-center"><img src="/post-images/play_protect_certification_fix_6.webp" alt="Google Play Services and Store"></div>
1. Reboot your device.
1. Voilà. You should now be able to log in to your Google account and use most of your apps.

## Method 2 (PC required)
This method is slightly more difficult than the first one and may take more time. However, it might be the only working method for some users because the Device ID app fails to install on some devices with newer Android versions.
1. Unlock developer options on your device. To do this, go to *Settings -> About phone* and click *Build number* 7 times. This procedure might be slightly different on some Android ROMs.
1. Go to *Settings -> System -> Developer options*. Scroll to the *Debugging* section and turn on *USB debugging* and *Rooted debugging*.
1. [Install *ADB* on your PC](https://www.xda-developers.com/install-adb-windows-macos-linux/)
1. Connect your device to your PC via a USB cable. Allow for *USB debugging*.
   <div class="grid place-content-center"><img src="/post-images/play_protect_certification_fix_7.webp" alt="Allow for USB debugging"></div>
1. Run the following command:
   ```bash
   adb devices
   ```
   Make sure you can see your device in the list of connected devices.
1. Restart the *ADB service* as *root* by running the following command:
   ```bash
   adb root
   ```
1. Use this command to find your Google Services Framework Android ID:
   ```bash
   adb shell 'sqlite3 /data/*/*/*/gservices.db \
      "select * from main where name = \"android_id\";"'
   ```
   This command should work on most Android ROMs. If you get the following error:
   ```bash
   /system/bin/sh: sqlite3: inaccessible or not found
   ```
   try following the third method.
1. Go to [www.google.com/android/uncertified/](https://www.google.com/android/uncertified/). Log in with your Google account, paste the value obtained from the previous step, and complete the captcha test. Then click *Register*.
   <div class="grid place-content-center"><img src="/post-images/play_protect_certification_fix_5.webp" alt="Registering your device ID"></div>
1. Follow steps 5-7 from the first method.

## Method 3 (PC required)
Follow this method if the seventh step from the second method failed for you.
1. Follow steps 1-6 from the first method.
1. Run the following command to copy the *gservices.db* file from its original location to the *Download* folder:
   ```bash
   adb shell cp /data/*/*/*/gservices.db /storage/emulated/0/Download
   ```
1. Now pull the *gservices.db* file to your PC:
   ```bash
   adb pull /storage/emulated/0/Download/gservices.db
   ```
1. Install *sqlite3* on your PC. If you use a Debian-based Linux distribution, you can do this by running the following command:
   ```bash
   sudo apt install sqlite3
   ```
   If you use Windows, follow [this tutorial](https://dev.to/dendihandian/installing-sqlite3-in-windows-44eb).
   To verify that *sqlite3* is correctly installed on your computer and present in the path, run the following command:
   ```bash
   sqlite3 --version
   ```
   It should output the version of *sqlite3* installed on your PC.
1. Finally, use this command to find your Google Services Framework Android ID:
   ```bash
   sqlite3 gservices.db "select * from main where name = \"android_id\";"
   ```
1. Follow steps 8 & 9 from the second method.

After following this guide, you should be able to use Google Mobile Services on your device. However, some banking or government apps might still refuse to work. This is because fixing Play Protect certification does not fix SafetyNet or Play Integrity attestation. Dealing with them is beyond the scope of this article and will be discussed in the future on [customrombay.org](https://customrombay.org/).
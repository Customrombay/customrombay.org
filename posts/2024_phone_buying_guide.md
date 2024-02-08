# The Ultimate Guide to Choosing Phones for Custom ROMs [Early 2024 Edition]
<div class="grid place-content-center"><img src="/post-images/2024_phone_buying_guide_1.webp" alt="Banner"></div>
Are you looking to buy a phone to run a custom ROM? Or maybe you want a future-proof device that will receive community support after its OEM drops it? This is the perfect guide for you! We will explore the most popular and affordable options as well as discuss the possible future for custom ROMs. All from the perspective of a developer and LineageOS contributor.

## What are custom ROMs and why should you care?
Custom ROMs are Android distributions, usually built by the community. Some of them aim at providing a close-to-stock, de-googled Android experience, some try to mimic the OS running on Google Pixels and unlock features exclusive to those devices, some are focused on freedom and privacy of the users, while others are packed with features not present in the Android versions provided by OEMs. Their common denominator is the effort to support devices abandoned by their manufacturers. Custom ROMs might provide better performance, greater stability, and more up-to-date security patches compared to the original software of your device. They therefore increase its longevity, sustainability, and usefulness.

## Should you install a custom ROM on your device?
As with all things in the world, using custom ROMs also has its downsides. Firstly, in almost all cases it requires unlocking the bootloader of your device. With few exceptions, it isn't recommended/possible to lock it after installing the custom ROM of your choice. An unlocked bootloader might allow someone to read your data and impersonate you if he gains physical access to your device.

Secondly, your device might lose some functionality after modifying its software. This might be due to it not passing Google's Play Integrity attestation. According to [the LinageOS blog](https://lineageos.org/PlayIntegrity/):
> App developers can choose to enable a toggle in the app developer console to hide their app on the Play Store if a device doesn’t pass Play Integrity tests, or can choose to check the Play Integrity status of a device to disable certain functionality. Notable examples would be Netflix, which is hidden on the Play Store, and Android Pay, which checks Play Integrity each time the app is used. Devices running Lineage may have a smaller selection of usable apps in the Play Store as a result of these checks.

This issue can be mitigated by using certain device fingerprints and Magisk modules, but discussing them is beyond the scope of this post.

Lastly, using ROMs from malicious sources might be dangerous. Therefore, always make sure you trust the developer of the OS you want to install.

If those issues are your deal-breakers, custom ROMs might not be for you. Otherwise, consider joining the custom ROM community!

## Which devices are supported by custom ROMs?
This is the question this entire website is trying to answer. If go to the [main page](https://customrombay.org/), you can find over 750 phones, laptops, SBCs, and other devices with some custom ROM support. You can use the search feature to find the device you are interested in.

This guide will present you with the best phones to buy in early 2024 in order to receive custom ROM support. The devices chosen for this post must meet the following criteria:
1. Released in 2022 or later
1. Available globally
1. Have an unlockable bootloader

It will discuss both high-end devices as well as the more affordable options.
## General tips
Below are the general tips to follow when choosing a phone for custom ROMs. They might be helpful, but always research the exact device you want to buy.
### Qualcomm Snapdragon vs MediaTek
<div class="grid place-content-center"><img src="/post-images/2024_phone_buying_guide_3.webp" alt="Snapdragon vs MediaTek image"></div>

MediaTek processors were considered inferior to Qualcomm's chips for years. They had the tendency to overheat and provide less performance. Enthusiasts also complained about their buggy implementation of scrolling. In 2024, most of this is no longer true. As you can see on the Graph below, MediaTek processors can keep up with their competition ([source of data](https://nanoreview.net/en/soc-list/rating)).

<div class="grid place-content-center"><img src="/post-images/2024_phone_buying_guide_2.webp" alt="Snapdragon vs MediaTek graph"></div>

However, **MediaTek CPUs are far worse when it comes to custom ROMs**. Phones equipped with them generally receive much less custom ROM community support. Moreover, they are easier to brick. This matter will be covered in a future post. It is also notable that Android apps and games tend to be more optimized for Qualcomm CPUs. Therefore, **choose a Snapdragon-powered device for custom ROM availability**.
### Avoid UNISOC

<div class="grid place-content-center"><img src="/post-images/2024_phone_buying_guide_4.webp" alt="No UNISOC"></div>

During the last 3 years, more and more low-end devices of various brands launched with UNISOC Spreadtrum CPUs. However, they generally do not receive custom ROMs. They also tend to have poor compatibility with [GSI ROMs](https://customrombay.org/posts/gsi_roms/). Avoid them if possible.
### Do not buy devices of no-name brands
It is not recommended to buy devices of no-name brands. If you have not heard about a certain OEM, do you expect developers to work on support for their devices...?

## Most popular brands
### Asus
Asus launched several phones in 2023, including Zenfone 10, ROG Phone 7, and ROG Phone 7 Ultimate. In early 2024, they also launched ROG Phone 8 and ROG Phone 8 Pro. However, this OEM does not allow for bootloader unlocking anymore. According to [Android Authority](https://www.androidauthority.com/asus-zenfone-10-bootloader-unlock-root-impossible-3384936/):
> In August, conversations with technical support staff revealed that ASUS had killed the ability to bootloader unlock and consequently root its phone lineup, namely the Zenfone and ROG Phone series.

Their 2022 flagship, [Zenfone 9 (davinci)](https://customrombay.org/asus-davinci/), received official Paranoid Android. However, it seems that it is not possible to install it if you have not unlocked the bootloader of your device when the unlock tool was still available. **Therefore, you should not buy Asus phones if you want to run custom ROMs in 2024**.
### F(x)tec

<div class="grid place-content-center"><img src="/post-images/2024_phone_buying_guide_5.webp" alt="F(x)tec Pro¹ X"></div>

In December 2022, this brand launched its second device, [F(x)tec Pro¹ X (pro1x)](https://customrombay.org/f(x)tec-pro1x/). As it is a device aimed at enthusiasts, the company allows its customers to choose between stock Android, official LineageOS, and Ubuntu Touch as the preinstalled OS. It also features a built-in keyboard, something unique for a modern smartphone. However, the specification of F(x)tec Pro¹ X might be disappointing, especially considering its price of $719. Snapdragon 662 powering this device offers worse performance than the CPU of [Xiaomi Redmi Note 11 (spes)](https://customrombay.org/xiaomi-spes/), a device that can be bought for around $100 on Amazon. Snapdragon 835, a CPU from 2016, [overperformes it in the AnTuTu 10 benchmark by 53%](https://nanoreview.net/en/soc-compare/qualcomm-snapdragon-835-vs-qualcomm-snapdragon-662)! Its other specs are not so great either. If you want to know more about them, read [this Reddit post](https://www.reddit.com/r/fxtec/comments/11tp815/top_reasons_why_you_should_never_buy_fxtec_pro1x/).
### Fairphone
Fairphone is a European sustainable smartphone company that aims to create ethically sourced and environmentally friendly devices. They prioritize transparency in their supply chain, striving to minimize the environmental and social impact of their products. Fairphone designs modular smartphones that are easier to repair and upgrade, promoting longevity and reducing electronic waste. The latest device of this brand, [Fairphone 5 (FP5)](https://customrombay.org/fairphone-FP5/), launched in August of 2023 with a price of €699. The company promised to provide up to 8 years of official updates for this phone, including at least five major Android OS updates. Its predecessor, [Fairphone 4 (FP4)](https://customrombay.org/fairphone-FP4/), shows that it is also likely to get significant community support. FP5 has already received the official TWRP.
### Google
The Google Pixel line of phones seems to be the best option for custom ROM lovers in 2024. Pixels receive the most custom ROMs, while their bootloaders can be unlocked with just one fastboot command. Moreover, they receive numerous official Android updates and are the first devices to get the new versions of the OS. If that isn't enough, Google provides them with some [Pixel-exclusive features](https://www.androidauthority.com/best-pixel-features-explained-3217987/) unavailable on other devices, as well as official support for the famously well-optimized Google Camera (GCAM).

<div class="grid place-content-center"><img src="/post-images/2024_phone_buying_guide_6.webp" alt="Pixel 8"></div>

In 2022, Google launched the [Pixel 6a (bluejay)](https://customrombay.org/google-bluejay/), [Pixel 7 (panther)](https://customrombay.org/google-panther/), and [Pixel 7 Pro (cheetah)](https://customrombay.org/google-cheetah/). In 2023, [Pixel 7a (lynx)](https://customrombay.org/google-lynx/), [Pixel 8 (shiba)](https://customrombay.org/google-shiba/), and [Pixel 8 Pro (husky)](https://customrombay.org/google-husky/) joined the series as well. They are all supported by numerous custom ROMs. LineageOS supports all devices from the Pixel 6 and 7 series, while the support of the Pixel 8 series is on its way.

The devices presented above all feature Google's own Tensor chips. Those CPUs offer less performance than Qualcomm's and MediaTek's flagship SOCs but should be sufficient for most users. Their price should not be a problem either. Refurbished Pixel 7 Pro can be bought for as little as $300 on [Amazon](https://www.amazon.com/Google-Pixel-Pro-Smartphone-Telephoto/dp/B0BKDTVR8B?th=1). This makes Google's phones a perfect choice for many Android power users.
### HTC
In 2009, HTC controlled 67% of the Android market. This, however, dropped to below 1% in 2023. HTC still releases some devices under its brand, but the company is only a shadow of its former self. Their 2023 models, including HTC U23, U23 Pro, Wildfire E2 Play, and Wildfire E3 lite are not supported by any custom ROMs. This is partially caused by the low number of sold devices.
### Huawei (and Honor)
Huawei shut down its bootloader unlocking service in 2018. This left their P20 series devices as the last ones with any custom ROM support. Some paid services still offer unlock codes for selected Huawei devices. Unofficial unlock tools also exist. [PotatoNV](https://github.com/mashed-potatoes/PotatoNV), one of them, allows its users to unlock phones running selected Kirin CPUs. Nevertheless, this does not change the fact that Huawei is not the brand for custom ROM users in 2024.

Honor, formerly a subsidiary of Huawei, also does not provide bootloader unlock codes. No custom ROMs are therefore developed for their devices.
### LG
LG left the phone market in 2021. They have not released any Android phones since then.
### Motorola
Out of all Motorola's phones released after 2021, 4 of them got official LineageOS support:
- [edge 30 (dubai)](https://customrombay.org/motorola-dubai/)
- [moto g32 (devon)](https://customrombay.org/motorola-devon/)
- [moto g42 (hawao)](https://customrombay.org/motorola-hawao/)
- [moto g52 (rhode)](https://customrombay.org/motorola-rhode/)

<div class="grid place-content-center"><img src="/post-images/2024_phone_buying_guide_7.webp" alt="Edge 30 Ultra"></div>

Except for these devices, Motorola [Edge 30 Ultra (eqs)](https://customrombay.org/motorola-eqs/) and [Edge 40 Pro (rtwo)](https://customrombay.org/motorola-rtwo/) also have their device tree repositories present in LineageOS' official GitHub organization ([here](https://github.com/LineageOS/android_device_motorola_eqs) and [here](https://github.com/LineageOS/android_device_motorola_rtwo) respectively). This means that they might get official LineageOS support sometime in the future. The former one is also officially supported by [Project Elixir](https://projectelixiros.com/device/eqs).

<div class="grid place-content-center"><img src="/post-images/2024_phone_buying_guide_8.webp" alt="ThinkPhone"></div>

In January of 2023, Motorola released [ThinkPhone (bronco)](https://customrombay.org/motorola-bronco/), a phone from the [Lenovo Think family](https://www.lenovo.com/us/en/think/). As a device aimed at technology enthusiasts (alongside businesses), it is likely to get custom ROM support in the future.

Motorola [Edge 30 Fusion (tundra)](https://customrombay.org/motorola-tundra/) seems worth mentioning as well. This mid-range phone is officially supported by AwakenOS and PixelOS, the latter already updated to Android 14.

When buying Motorola devices, it is important to avoid those with MediaTek CPUs. While most of their Snapdragon phones receive some love from the custom ROM community, owners of the MediaTek models must resort to [GSIs](https://customrombay.org/posts/gsi_roms/) or stay on the stock OS.
### Nokia
Nokia's global mobile phone market share peaked in 2008 at 38.6%. However, just as HTC, this brand also experienced a period of decline. It still produces new devices, such as the Nokia G310, C210 or G42. However, due to their limited popularity and lack of official bootloader unlock methods, they do not receive any custom ROMs. Some older Nokia phones can be unlocked using various unofficial methods ([documented here](https://wiki.postmarketos.org/wiki/Category:Bootloaders/Unlock_Bootloaders/HMD_Global)), but overall **devices of this brand are not a viable option for custom ROM users**.
### Nothing
Nothing is a British consumer electronics manufacturer. It was founded by Carl Pei, a co-founder of OnePlus, who aims to *remove barriers between people and technology*. As of now, Nothing released two Android phones: Phone (1) (Spacewar) and Phone (2) (Pong). Both of them have already received Android 14 custom ROMs. Their bootloaders can be easily unlocked. Nothing's newly announced device, Phone (2a), is rumored to be powered by the Mediatek Dimensity 7200 chipset, so its custom ROM support is uncertain. This does not change the fact that custom ROMs are being developed for existing Nothing phones, so **this brand might be worth considering**.
### OnePlus
OnePlus was founded in 2013 and for almost 10 years their phones received great custom ROM support. However, everything changed in 2022 with the release of the OnePlus 10 Pro and other devices from this series. The company now requires an authorized employee to enter their credentials in order to fix a bricked phone. As porting a custom ROM often involves bricking your test device, sometimes several times, development is very slow for newer OnePlus models. OnePlus [10 Pro (wly)](https://customrombay.org/oneplus-wly/), [10T / ACE Pro (ovaltine)](https://customrombay.org/oneplus-ovaltine/), and [11 5G (salami)](https://customrombay.org/oneplus-salami/) all have received some custom ROMs, but their support is nowhere near as good as that of the older devices. The future of custom ROMs on OnePlus devices remains to be seen, but for now, it does not look promising.
### Realme
Out of all the phones Realme made, only two have ever received official LineageOS support. Those are Realme [2 Pro (RMX1801)](https://customrombay.org/realme-RMX1801/) and [3 Pro (RMX1851)](https://customrombay.org/realme-RMX1851/). However, they were launched back in 2018 and 2019 respectively. When it comes to devices released after 2021, [Realme GT NEO 3T (RMX3371)](https://customrombay.org/realme-RMX3371/) seems to be supported relatively well. Other newer devices of this brand receive very limited support.
### Samsung
In 2023, Samsung controlled about 20% of the mobile phone market. Most of their phones are bootloader-unlockable. The exceptions include phones released for the North American market.
#### Galaxy S series
Up to the Galaxy S10, the custom ROM support for this series of devices was relatively good. All Exynos-powered devices from the S10 series received official LineageOS. However, newer generations did not get as much love from the developers. S20-series devices got official Android 11-based crDroid and [some work was done to port TWRP to the S23-series](https://xdaforums.com/t/recovery-unofficial-twrp-for-galaxy-s23-snapdragon-series.4648640/). The development of custom ROMs for those devices remains very limited.
#### Galaxy A series

<div class="grid place-content-center"><img src="/post-images/2024_phone_buying_guide_9.webp" alt="Galaxy A73 5G"></div>

This series of devices generally receives better community support than the Galaxy S-series. [Samsung Galaxy A73 5G (a73xq)](https://customrombay.org/samsung-a73xq/) is the only device of this brand released after 2021 that received official LineageOS support. Some 2021 A, M, and F series devices received official LineageOS support as well:
- [Galaxy A52 4G (a52q)](https://customrombay.org/samsung-a52q/)
- [Galaxy A52s 5G (a52sxq)](https://customrombay.org/samsung-a52sxq/)
- [Galaxy A72 (a72q)](https://customrombay.org/samsung-a72q/)
- [Galaxy F62/M62 (f62)](https://customrombay.org/samsung-f62/)
- [Galaxy M52 5G (m52xq)](https://customrombay.org/samsung-m52xq/)

This illustrates a clear pattern: Snapdragon-powered devices are the most likely to receive support. Some Exynos-powered phones also get custom ROM support, while MediaTek-powered models are not supported.
#### Galaxy Tab series
Several Samsung tablets released in **2019** and **2020** got the official LineageOS support. They include:
- [Galaxy Tab A7 10.4 2020 (LTE) (gta4l)](https://customrombay.org/samsung-gta4l/)
- [Galaxy Tab A7 10.4 2020 (Wi-Fi) (gta4lwifi)](https://customrombay.org/samsung-gta4lwifi/)
- [Galaxy Tab S5e (LTE) (gts4lv)](https://customrombay.org/samsung-gts4lv/)
- [Galaxy Tab S5e (Wi-Fi) (gts4lvwifi)](https://customrombay.org/samsung-gts4lvwifi/)
- [Galaxy Tab S6 Lite (LTE) (gta4xl)](https://customrombay.org/samsung-gta4xl/)
- [Galaxy Tab S6 Lite (Wi-Fi) (gta4xlwifi)](https://customrombay.org/samsung-gta4xlwifi/)

Furthermore, [Galaxy Tab S6 (LTE) (gts6l)](https://customrombay.org/samsung-gts6l/) and [Galaxy Tab S6 (Wi-Fi) (gts6lwifi)](https://customrombay.org/samsung-gts6lwifi/) received official TWRP support. Therefore, there is some interest from the developers in this series, but no Galaxy Tab series device released after 2021 with a custom ROM is present in the [customrombay.org database](https://customrombay.org/).
#### Alternatives to *traditional* custom ROMs
As you can see, the availability of *traditional* custom ROMs (such as LineageOS, EvolutionX, or Paranoid Android) on Samsung devices is not great. However, there are two notable alternatives to them. The first one is the possibility to install GSI ROMs. This topic was covered in [this post](https://customrombay.org/posts/gsi_roms/). Fortunately for the owners of Samsung devices, GSIs work relatively well on Galaxy phones and tablets. Most if not all hardware functions correctly.

The second popular option consists of ROMs based on Samsung's One UI. Those ROMs are either modified versions of the stock OS of the device or systems ported from other Galaxy devices. Some of them allow you to run newer versions of Android or One UI, not released for your model, while others add customization options or focus on hiding the root access. Most of them support VoLTE (read the section below).
#### Samsung-specific issues
Unlocking the bootloader on newer Samsung devices permanently trips [KNOX](https://en.wikipedia.org/wiki/Samsung_Knox). As a result of this, some apps refuse to work and some features of the device might become inaccessible.

Another Samsung-specific issue related to custom ROMs is their proprietary implementation of [VoLTE](https://en.wikipedia.org/wiki/Voice_over_LTE). As it has not been reverse-engineered ([yet](https://www.reddit.com/r/Android/comments/17u5h8u/a_volte_call_with_an_opensource_android_ims_stack/)), VoLTE does not work on Samsung devices running custom ROMs (except those based on One UI). This might be a growing problem because [more and more carriers decide to shut down their 3G networks](https://www.pcmag.com/how-to/the-3g-shutdown-how-will-it-affect-your-phone).
### Sony
Throughout the recent years, Sony focused on their Xperia 1, 5, and 10 lines of phones. Two of their devices from 2021 received official LineageOS support: [Xperia 1 III (pdx215)](https://customrombay.org/sony-pdx215/) and [Xperia 5 III (pdx214)](https://customrombay.org/sony-pdx214/). This was possible thanks to the easy [bootloader unlock procedure](https://developer.sony.com/open-source/aosp-on-xperia-open-devices/get-started/unlock-bootloader/how-to-unlock-bootloader/) and their [Open Devices](https://developer.sony.com/open-source/aosp-on-xperia-open-devices) program. When it comes to their newer phones, the Xperia 1 IV got some [unofficial TWRP](https://xdaforums.com/t/beta-twrp-pdx223-twrp-for-sony-xperia-1-iv.4642256/) builds, while some developers are building [unofficial LineageOS](https://xdaforums.com/t/rom-unofficial-lineageos-21-for-xperia-1v-xq-dq72.4649521/) for the Xperia 1 V. Therefore, selected devices from this OEM receive custom ROM support, but they might not be the perfect choice for most people.
### Xiaomi
<div class="grid place-content-center"><img src="/post-images/2024_phone_buying_guide_10.webp" alt="Xiaomi brand"></div>

Xiaomi is well-known for its Android skin - MIUI. It has a large number of lovers and haters. The former ones usually buy affordable devices of this OEM only to flash a custom ROM as soon as they can. This, combined with the fact that Xiaomi provided a reasonable bootloader unlocking policy, boosted the development of custom ROMs. Below is a list of Xiaomi devices released after 2021 with considerable community support:
- [Xiaomi 12T Pro / Redmi K50 Ultra (diting)](https://customrombay.org/xiaomi-diting/) - supported by [DerpFest (Android 14)](https://sourceforge.net/projects/derpfest/files/diting/)
- [Xiaomi 13 (fuxi)](https://customrombay.org/xiaomi-fuxi/) and [Xiaomi 13 Pro (nuwa)](https://customrombay.org/xiaomi-nuwa/) - supported by [Paranoid Android (Android 14)](https://paranoidandroid.co/xiaomi13/uvite-beta-1/) 
- [POCO F4 (munch)](https://customrombay.org/xiaomi-munch/) - supported by many Android 13 and 14 custom ROMs
- [POCO F5 / Redmi Note 12 Turbo (marble)](https://customrombay.org/xiaomi-marble/) - supported by many Android 13 and 14 custom ROMs
- [POCO F5 Pro / Redmi K60 (mondrian)](https://customrombay.org/xiaomi-mondrian/) - supported by [DerpFest (Android 14)](https://sourceforge.net/projects/derpfest/files/mondrian/)
- [POCO X5 5G / Redmi Note 12 5G / Note 12R Pro (stone)](https://customrombay.org/xiaomi-stone/) - supported by some Android 14 custom ROMs
- [POCO X5 Pro 5G / Redmi Note 12 Pro Speed (redwood)](https://customrombay.org/xiaomi-redwood/) - supported by many Android 13 and 14 custom ROMs
- [Redmi Note 11 (spes)](https://customrombay.org/xiaomi-spes/) - supported by some Android 13 and 14 custom ROMs
- [POCO M4 Pro / Redmi Note 11S (fleur)](https://customrombay.org/xiaomi-fleur/) - supported by some Android 13 custom ROMs
- [Redmi Note 12R / Redmi 12 5G / POCO M6 Pro 5G (sky)](https://customrombay.org/xiaomi-sky/) - supported by some Android 13 and 14 custom ROMs

As you can see, the list includes both flagship, high-end devices (Xiaomi 12T Pro, 13, 13 Pro) as well as more affordable phones (Redmi and POCO models). It is worth noting that all of them but one ([fleur](https://customrombay.org/xiaomi-fleur/)) use Snapdragon SOCs. Mediatek-powered devices, such as [Xiaomi 12T (plato)](https://customrombay.org/xiaomi-plato/), [Redmi Note 12 Pro (ruby)](https://customrombay.org/xiaomi-ruby/), and [POCO M4 Pro 5G (evergreen)](https://customrombay.org/xiaomi-evergreen/), rarely receive good custom ROM support. This way of thinking suggests that the next device that might be well supported in the future is the [Redmi Note 13 Pro 5G / POCO X6 5G (garnet)](https://customrombay.org/xiaomi-garnet/). However, it is just a speculation at this point.
#### HyperOS changes
<div class="grid place-content-center"><img src="/post-images/2024_phone_buying_guide_11.webp" alt="HyperOS"></div>

In 2023, Xiaomi discontinued MIUI and announced HyperOS. Their new operating system is still just an Android skin but has a different bootloader unlock policy. For some time it was rumored that a level 5 or higher Xiaomi Community account will be needed to unlock the BL. Reaching this level requires months of active participation in the forum. However, it did not turn out to be true for users outside mainland China. According to [Xiaomiui](https://xiaomiui.net/where-is-the-easiest-way-to-download-miui-15-here-is-miui-downloader-safe-version-51691/), there are only three requirements:
> - First, make sure your Mi Account has been active for more than 30 days.
> - Xiaomi Community App version 5.3.31 or above.
> - You can only unlock the bootloader of 3 devices per year with your account.

This probably means that HyperOS did not mark the end of custom ROMs on Xiaomi phones.

#### xiaomi.eu
There is one custom ROM for Xiaomi devices that significantly differs from the others - [xiaomi.eu](https://xiaomi.eu/community/). It is based on Chinese releases of MIUI (and HyperOS), which are adapted by the developers to the global market. This ROM is more feature-rich than global MIUI and includes the stock camera app. It also supports many devices unsupported by any AOSP-based custom ROMs.

## Conclusion
After analyzing the availability of custom ROMs for devices launched in 2022 and later, I created a list of phones with the best existing and potential support. It might be quite subjective but should be a good starting point for your considerations.
### 1. Pixel 8 series ([shiba](https://customrombay.org/google-shiba/)/[husky](https://customrombay.org/google-husky/))
<div class="grid place-content-center"><img src="/post-images/2024_phone_buying_guide_12.webp" alt="Pixel 8"></div>

The newest line of Google's phones has already received some Android 14 custom ROMs and it is almost certain that it will get official LineageOS as well. The Tensor G3 CPU should be sufficient for the next years, while their cameras are one of the best on the market. Additionally, their bootloader unlock procedure allows you to use your favorite ROM from day one. A new Pixel 8 costs around $550 on Amazon.
### 2. Pixel 7 series ([panther](https://customrombay.org/google-panther/)/[cheetah](https://customrombay.org/google-cheetah/)/[lynx](https://customrombay.org/google-lynx/))
<div class="grid place-content-center"><img src="/post-images/2024_phone_buying_guide_13.webp" alt="Pixel 7"></div>

All of the devices from this series are already officially supported by LineageOS and numerous other custom ROMs, including those based on Android 14. They are expected to receive official and unofficial updates for years to come. A new Pixel 7a can be bought on Amazon for around $375.
### 3. Xiaomi POCO F5 / Redmi Note 12 Turbo ([marble](https://customrombay.org/xiaomi-marble/))
<div class="grid place-content-center"><img src="/post-images/2024_phone_buying_guide_14.webp" alt="Poco F5"></div>

The Snapdragon 7+ Gen 2 SOC powering this device should be able to keep up with new Android games and apps for the next couple of years. It is supported by a long list of custom ROMs and its bootloader can be unlocked even after the HyperOS update. It is one of the most powerful devices in its price range, costing about $400 on AliExpress.
### 4. Motorola Edge 30 ([dubai](https://customrombay.org/motorola-dubai/))
<div class="grid place-content-center"><img src="/post-images/2024_phone_buying_guide_15.webp" alt="Edge 30"></div>

Powered by Snapdragon 778G+ 5G, it is the best-performing Motorola device released after 2021 and officially supported by LineageOS. With the support of several other ROMs, it might be a good choice for many custom ROM lovers. Its Amazon price tag of about $300 makes it an option worth consideration.
### 5. Xiaomi POCO X5 Pro 5G / Redmi Note 12 Pro Speed ([redwood](https://customrombay.org/xiaomi-redwood/))
<div class="grid place-content-center"><img src="/post-images/2024_phone_buying_guide_16.webp" alt="POCO X5 Pro 5G"></div>

The second Xiaomi device on this list is a solid mid-range phone with the Snapdragon 778G processor. It does not have outstanding cameras or flagship-level performance, but you should not expect this from a smartphone that can be found for less than $300 on AliExpress. It does, however, have great community support and might be a good choice for custom ROM enthusiasts.
### 6. Motorola Edge 30 Ultra ([eqs](https://customrombay.org/motorola-eqs/)) / Edge 40 Pro ([rtwo](https://customrombay.org/motorola-rtwo/))
<div class="grid place-content-center"><img src="/post-images/2024_phone_buying_guide_17.webp" alt="Edge 40 Pro"></div>

Those devices are not officially supported by LineageOS yet, but it might be only a matter of time. Their Snapdragon 8+ Gen 1 and Snapdragon 8 Gen 2 CPUs make them very powerful for daily use and mobile gaming. They both feature curved displays, which distinguishes them from other devices. However, their price of over $600 makes them unaffordable for many people.
### 7. Nothing Phone (2) ([Pong](https://customrombay.org/nothing-Pong/))
<div class="grid place-content-center"><img src="/post-images/2024_phone_buying_guide_18.webp" alt="Nothing Phone (2)"></div>

The second phone released by Nothing comes with a powerful Snapdragon 8+ Gen 1 processor and a price tag of $690 on Amazon. It features a good stock OS, but it is also easy to unlock and unofficially supported by some Android 14 custom ROMs. It is certainly worth buying if you like its unique design and white LEDs.
### 8. Fairphone 5 ([FP5](https://customrombay.org/fairphone-FP5/))
<div class="grid place-content-center"><img src="/post-images/2024_phone_buying_guide_19.webp" alt="Fairphone 5"></div>

The Fairphone 5 is a modular smartphone created for easy repair and customization by users. It hasn't received any custom ROMs yet, but official TWRP support and brand history suggest that this might change in the future. Its price of €699 is rather high, but this phone is designed to outlive 2 or 3 other devices.

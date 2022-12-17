# Contributing

To contribute, you firstly have to fork this repository on [GitHub](https://github.com/PiotrZPL/customrombay.org/). Then, clone your repository:
```bash
git clone https://github.com/{yourusername}/customrombay.org.git
```

Then, it is time to do some changes to device files. They are located in "database/phone_data/". A device file looks like this:

```yaml
device-name: alioth
device-vendor: Xiaomi
device-model-name: Poco F3
device-description: Something interesting about the device
roms:
  - rom-name: LineageOS
    rom-support: true
    rom-state: Official
    android-version: 12L
    rom-webpage: https://lineageos.org/
    phone-webpage: https://wiki.lineageos.org/devices/alioth/
  - rom-name: ArrowOS
    rom-support: true
    rom-state: Official
    android-version: 12L
    rom-webpage: https://arrowos.net/
    phone-webpage: https://arrowos.net/download/
  - rom-name: PixelExperience
    rom-support: true
    rom-state: Official
    android-version: 13
    rom-webpage: https://download.pixelexperience.org/
    phone-webpage: https://download.pixelexperience.org/alioth/
```

You can add a custom ROM for a device by adding the following lines to the end of a device file:

```yaml
  - rom-name: PixelExperience Plus # Name of the custom ROM
    rom-support: true # Does this ROM support this device?
    rom-state: Official # eg. Official, Discontinued or Beta
    android-version: 13 # Android version of this ROM
    rom-webpage: https://download.pixelexperience.org/ # Main website of this ROM
    phone-webpage: https://download.pixelexperience.org/alioth/ # Webpage of this device
```

Then, save the modified file and commit to your repository. After finishing your work, create a pull request on GitHub.
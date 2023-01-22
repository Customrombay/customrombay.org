# Contributing

To contribute, you firstly have to [fork](https://docs.github.com/en/get-started/quickstart/fork-a-repo) the database repository on [GitHub](https://github.com/Customrombay/database). Then, [clone](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository) your repository:
```bash
git clone https://github.com/{yourusername}/database.git
```

Then, it is time to do some changes to device files. They are located in  the **database/phone_data/** directory. A device file looks like this:

```yaml
device-name: 'alioth'
device-vendor: 'Xiaomi'
device-model-name: 'Poco F3'
device-description: 'Something interesting about the device'
roms: 
  - 
    rom-name: 'LineageOS'
    rom-support: true
    rom-state: 'Official'
    android-version: '12L'
    rom-webpage: 'https://lineageos.org/'
    phone-webpage: 'https://wiki.lineageos.org/devices/alioth/'
  - 
    rom-name: 'ArrowOS'
    rom-support: true
    rom-state: 'Official'
    android-version: '12L'
    rom-webpage: 'https://arrowos.net/'
    phone-webpage: 'https://arrowos.net/download/'
  - 
    rom-name: 'PixelExperience'
    rom-support: true
    rom-state: 'Official'
    android-version: 13
    rom-webpage: 'https://download.pixelexperience.org/'
    phone-webpage: 'https://download.pixelexperience.org/alioth/'
  - 
    rom-name: 'PixelExperience Plus'
    rom-support: true
    rom-state: 'Official'
    android-version: 13
    rom-webpage: 'https://download.pixelexperience.org/'
    phone-webpage: 'https://download.pixelexperience.org/alioth/'
  - 
    rom-name: 'crDroid'
    rom-support: true
    rom-state: 'Official'
    android-version: '13'
    rom-webpage: 'https://crdroid.net/'
    phone-webpage: 'https://crdroid.net/downloads#alioth'
```

You can add a custom ROM for a device by adding the following lines to the end of a device file:

```yaml
  - 
    rom-name: '/e/OS' # Name of the custom ROM
    rom-support: true # Does this ROM support this device?
    rom-state: 'Official' # eg. Official, Discontinued or Beta
    android-version: '12' # Android version of this ROM
    rom-webpage: 'https://e.foundation/e-os/' # Main website of this ROM
    phone-webpage: 'https://doc.e.foundation/devices/alioth' # Webpage of this device
```

Then, save the modified file and [commit](https://github.com/git-guides/git-commit) to your repository. After finishing your work, [create a pull request](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request) on GitHub.

Note that device files use the [YAML syntax](https://docs.ansible.com/ansible/latest/reference_appendices/YAMLSyntax.html).
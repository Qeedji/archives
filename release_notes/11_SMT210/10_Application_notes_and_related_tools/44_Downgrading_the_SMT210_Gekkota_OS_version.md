# Downgrading a SMT210 device to a major Gekkota OS version with an SD card

After ordering, the SMT210 devices are delivered now with the latest major Gekkota OS version: `Gekkota OS 4.XX.YY`.

For device fleet homogeneity, some customers may wish to downgrade these SMT210 devices to a major Gekkota OS version `Gekkota OS 3.XX.YY`.
The only way to do this is to execute a device formatting procedure with a boot-able SD card containing an ISO image embedding the SMT210 Gekkota OS 3.12.57 firmware version .

Warning, the device formatting is leading to the loss of:

- the device license,
- the user preference,
- the SD card content (playout) and
- the device configuration (server, network, ...).

After the Gekkota OS downgrading, the test card is displayed.

Consequently, it is highly recommended to save all the required parameters to be able to reconfigure your SMT210 afterwards:

- network configuration
- servers configuration
- license key
	- In the device configuration Web interface, go in the menu ```Configuration``` the n ```License``` and copy the license key value [View](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/smt210_downgrade_to_gekkota-os_3/qeedji-license.jpg)
- regionality language

It is possible also to prepare a configuration script which can be injected then by USB when the migration will be completed.

## `2019-10-24` Gekkota OS 3.12.57 ISO Image for SMT210 [download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/smt210_downgrade_to_gekkota-os_3/gekkota_os_smt210-3.12.57.iso)
>##### **BUG FIX, NEW FEATURES, MINOR UPDATES**
- Initial version
    - File extension: .iso
    - File size: 1,8 GB
>##### **COMPATIBILITIES**
- Device: SMT210
- Initial version before downgrading: Gekkota OS 4.XX.YY
- Version after the downgrading is completed: Gekkota OS 3.12.57

#### **PREREQUISITE BEFORE EXECUTING THE PROCEDURE**

**ADDITIONAL SD CARD**:

A SD card, called `User data SD card`, is installed by default in any SMT210 device but it can't be used for the device formatting. So it is required to have another SD card (at least 2GB), called `ISO image SD card`, which will be made boot-able to support the formatting with the ISO image. To know the supported SD card models, refer to the SMT210 user manual.

**REMOVE ALL THE SMT210 GEKKOTA OS 4.XX.YY FIRMWARE FROM YOUR CMS**:

To avoid any unexpected software upgrade, it is recommended to remove any SMT210 Gekkota OS 4.XX.YY version from your CMS.

#### **ISO IMAGE SD CARD PREPARATION**

**ISO IMAGE DOWNLOADING**:

Download the `Gekkota OS 3.12.57 ISO Image for SMT210`, whose filename is ```gekkota_os_smt210-3.12.57.iso```, in a local directory of your Windows computer. The download time can depend on the network connection quality.

**SD CARD FAT FORMATTING**:

Insert your `ISO image SD card` in the SD card reader of your Windows Computer. In case Windows is showing a message inviting to format the SD card, choose yes
- Formatting option: *Fast formatting*
- File system: *FAT*
- Sector size: *32 KB*

**ISO IMAGE FLASHING WITH BALENAETCHER SOFTWARE**:

The `Gekkota OS 3.12.57 ISO Image for SMT210` can be burnt on your `ISO image SD card` with any ISO image flashing software.
However Innes recommends to use the `BalenaEtcher` software (version V1.5.59, for example). If not already done, insert your `ISO image SD card` in the SD card reader of your Windows Computer.
Screen
|BalenaEtcher filename | version |OS Windows | Size | Download link
|:--|:--|:--|:--|:--
| balenaEtcher-Setup-1.5.59.exe | 1.5.59 | x86, x64 | 139 MB |[BalenaEtcher Web site](https://www.balena.io/etcher/)

Install for example `BalenaEtcher` software and execute it:

- Click on the `Select image` button [View](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/smt210_downgrade_to_gekkota-os_3/balenaEtcher_select_image.jpg)
    - Select the file ```gekkota_os_smt210-3.12.57.iso```
- Press on the `Select target` button [View](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/smt210_downgrade_to_gekkota-os_3/balenaEtcher_select_target.jpg)
    - Select carefully the storage media letter corresponding to your SD card
- Press on the `Flash!` button.
- Wait that the SD card flashing is completed [View](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/smt210_downgrade_to_gekkota-os_3/balenaEtcher_flashing.jpg) to write the ISO image on the SD card.
- Remove the `ISO image SD card` from your Windows computer.

#### **GEKKOTA OS MAJOR VERSION DOWNGRADING**

Before inserting the `ISO image SD card` in the SD card reader of the SMT210 device, first you have to remove the existing `User data SD Card`:

- Unplug the SMT210 device power supply and remove the SMT210 from the wall,
- With a screw driver, take off the screw and the spacer at the back of the SMT210,
- Remove the `User data SD Card`,
    - Remember the SD card insertion orientation
- Insert the `ISO image SD Card`,
- Plug the SMT210 device power supply,
    - Some installation logs are printed on the screen. Take a look on the status green led at the back of the SMT210 device; Only when it is blinking rapidly and continuously, you can continue on the next step.
- Remove the `ISO image SD Card` (without switching off the SMT210 device)
- Insert back the `User data SD Card` (without switching off the SMT210 device) and wait that the ISO image is properly installed on the device
    - Don't unplug electrically the SMT210 device while the status green led is displayed continuously. When the LED is blinking again, you can continue on the next step.
- When the installation is completed, the SMT210 is displaying a test card showing
```
Gekkota OS - 3.12.57
...
IPV4: 192.168.0.2/24
IPV6: fc00::21c:e6ff:fe02:00be (for example)
...
```
#### **SMT210 CONFIGURATION**
Connect an ethernet cable on the SMT210 device if required.
Connect to the SMT210 configuration Web interface to configure your device. If the IPV6 protocol is supported, you can for example connect to the SMT210 configuration Web interface by using the SMT210 IPV6 address in a Web browser. For example:
```
http://[fc00::21c:e6ff:fe02:00be]/.admin/
```

Inactivate the test card and enter in the appropriate menu:

- the network configuration
- the servers configuration
- the license key
- the regionality language
- the time & time
Then reboot the SMT210 device.

To configure your SMT210, you can use a configuration script.
For further information, contact support@innes.fr.

Check that the SMT210 device is properly registered in your CMS and check the variables values associated to it.
Publish the content like you were used to.

With a screw driver, set back the screw and the spacer at the back of the SMT210 to ensure that the SD card cannot be removed.
Mount back the SMT210 on the wall.

#### **OTHER TESTED SD CARDS**
These SD cards have been successfully tested:
|Trade mark | Model type | Size
|:--|:--|:--
|Kingston  | SDHC Ultimate 100K | 16 GB
|Transcend | SD                 |  2 GB
|Kingston  | SDHC               |  8 GB
|Essentielb| SDHC               | 32 GB

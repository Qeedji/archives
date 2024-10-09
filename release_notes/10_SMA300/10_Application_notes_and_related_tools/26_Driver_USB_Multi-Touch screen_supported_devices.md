# Driver USB for Multi-touch screen

#### **SUMMARY** `2018-06-07` (last update)

#### **INFORMATION**
- The driver USB supports the multi-touch screen devices `HID Multi-touch digitizer` compliant
- The driver USB can support the installation of:
	- either the multi-touch digitizer devices having the build-in `Vendor ID`/`Vendor label`/`Device ID`/`Device version` parameters values described in the table below
	- or more recent multi-touch digitizer devices implementing the additional usage `Contact identifier = 0x51` specified in the note of 27 Feb 2009 `Addition of usages related to multi-touch digitizers`

#### **SUPPORTED PERIPHERAL EXAMPLE**
|Constructor |Model |Peripherals type | Device connector
|:--|:--|:--|:--
|ACER |T272HL| Multi-touch screen| HDMI + USB

#### **HTML APPLICATION EXAMPLES**
- [Paulirish HTML application](https://www.paulirish.com/demo/multi)

#### **COMPATIBILITIES**
- Gekkota 4.10.12 (or above)
	- Tested with display output in Full HD definition

#### **LIST OF THE ADDITIONAL USAGES OF THE NOTE OF 27 FEB 2009**
- Addition of usages related to multi-touch digitizers
	- 0x51 Contact identifier DV 16.6
	- 0x0E Device configuration CA 16.7
	- 0x52 Device mode DV 16.7
	- 0x53 Device identifier DV 16.7
	- 0x54 Contact count DV 16.6
	- 0x55 Contact count maximum SV 16.6
	- 0x23 Device settings CL 16.7

- For further information go to the Web page [USB.org](https://www.usb.org/developers/hidpage/) then `Review Request 34:  Multi-touch digitizers``

#### **VENDOR ID / VENDOR LABEL / DEVICE ID / DEVICE VERSION**
- These are the vendor label and device version supported by the USB driver:
| Vendor ID | Vendor label    | Device ID | Device version |
| :------- | :--------------- | :-------- | :------------- |
|   0x0596 | 3M               | 0x0500 | 3M 1968 |
|   0x0596 | 3M               | 0x0502 | 3M 2256 |
|   0x0596 | 3M               | 0x0506 | 3M 3266 |
|   0x2101 | ActionStar       | 0x1011 | ActionStar 1011 |
|   0x03eb | Atmel            | 0x211c | Atmel Multi-touch |
|   0x03eb | Atmel            | 0x2118 | Atmel Mxt Digitizer |
|   0x2453 | Baanto           | 0x0100 | Baanto Multi-touch 190W2 |
|   0x2087 | Cando            | 0x0a01 | Cando Multi-touch |
|   0x2087 | Cando            | 0x0a02 | Cando Multi-touch 10_1 |
|   0x2087 | Cando            | 0x0b03 | Cando Multi-touch 11_6 |
|   0x2087 | Cando            | 0x0f01 | Cando Multi-touch 15_6 |
|   0x2247 | Chunghwa Telecom | 0x0001 | Chunghwa Telecom Multi-touch |
|   0x1ff7 | CVTouch          | 0x0013 | CVTouch Screen |
|   0x04b4 | Cypress          | 0xc001 | Cypress Truetouch |
|   0x7374 | easyMaxTouch     | 0x1201 | Module easyMaxTouch |
|   0x0eef | eGalax           | 0x480d | eGalax Multi-touch 480D |
|   0x0eef | eGalax           | 0x480e | eGalax Multi-touch 480E |
|   0x0eef | eGalax           | 0x7207 | eGalax Multi-touch 7207 |
|   0x0eef | eGalax           | 0x720c | eGalax Multi-touch 720C |
|   0x0eef | eGalax           | 0x7224 | eGalax Multi-touch 7224 |
|   0x0eef | eGalax           | 0x722A | eGalax Multi-touch 722A |
|   0x0eef | eGalax           | 0x725e | eGalax Multi-touch 725E |
|   0x0eef | eGalax           | 0x7262 | eGalax Multi-touch 7262 |
|   0x0eef | eGalax           | 0x726b | eGalax Multi-touch 726B |
|   0x0eef | eGalax           | 0x72a1 | eGalax Multi-touch 72A1 |
|   0x0eef | eGalax           | 0x72aa | eGalax Multi-touch 72AA |
|   0x0eef | eGalax           | 0x72c4 | eGalax Multi-touch 72C4 |
|   0x0eef | eGalax           | 0x72d0 | eGalax Multi-touch 72D0 |
|   0x0eef | eGalax           | 0x72fa | eGalax Multi-touch 72FA |
|   0x0eef | eGalax           | 0x7302 | eGalax Multi-touch 7302 |
|   0x0eef | eGalax           | 0x7349 | eGalax Multi-touch 7349 |
|   0x0eef | eGalax           | 0x73f7 | eGalax Multi-touch 73F7 |
|   0x0eef | eGalax           | 0xa001 | eGalax Multi-touch A001  |
|   0x04E7 | Elo TouchSystems | 0x0022 | Elo TS2515 |
|   0x25b5 | Flatfrog         | 0x0002 | Multi-touch 3200 |
|   0x10c4 | FocalTech        | 0x81b9 | FocalTech FTXXXX Multi-touch |
|   0x0dfc | General Touch    | 0x0003 | General Touch Win7 Two Fingers |
|   0x0dfc | General Touch    | 0x0100 | General Touch Win8 PWT Ten Fingers |
|   0x0dfc | General Touch    | 0x0101 | General Touch Win8 PIT 0101 |
|   0x0dfc | General Touch    | 0x0102 | General Touch Win8 PIT 0102 |
|   0x0dfc | General Touch    | 0x0106 | General Touch Win8 PIT 0106 |
|   0x0dfc | General Touch    | 0x010a | General Touch Win8 PIT 010A |
|   0x25B6 | Fructel          | 0x0002 | Gametel Multi-touch Mode |
|   0x1aad | GoodTouch        | 0x000f | GoodTouch 000f |
|   0x22ed | Hanvon Alt       | 0x1010 | Hanvon Alt Multi-touch |
|   0x1cb6 | Ideacom          | 0x6650 | Ideacom IDC6650 |
|   0x1cb6 | Ideacom          | 0x6651 | Ideacom IDC6651 |
|   0x222a | Ilitek           | 0x0001 | Ilitek dual touch panel |
|   0x6615 | IRTouch          | 0x0070 | IRTouch Infrared USB |
|   0x1fd2 | LG               | 0x0064 | LG Multi-touch |
|   0x202e | Lumio            | 0x0006 | Crystaltouch |
|   0x202e | Lumio            | 0x0007 | Crystaltouch Dual |
|   0x0486 | Asus             | 0x0185 | Asus T91MT |
|   0x0486 | Asus             | 0x0186 | Asus Multi-touch YFO |
|   0x062a | TurBox           | 0x7100 | TurBox TouchScreen Mosart |
|   0x1870 | Nexio            | 0x010d | Nexio Multi-touch 420 |
|   0x04da | Panasonic        | 0x1044 | Panasonic board UBT780 |
|   0x04da | Panasonic        | 0x104d | Panasonic board UBT880 |
|   0x0603 | Novatek          | 0x0600 | Novatek PCT |
|   0x14e1 | PenMount         | 0x3500 | PenMount PCI |
|   0x093a | PixArt           | 0x8001 | PixArt optical touch screen |
|   0x093a | PixArt           | 0x8002 | PixArt optical touch screen 1 |
|   0x093a | PixArt           | 0x8003 | PixArt optical touch screen 2 |
|   0x20b3 | Hanvon           | 0x0a18 | Hanvon Multi-touch |
|   0x2087 | Cando            | 0x0703 | Cando PixCir Multi-touch |
|   0x0408 | Quanta           | 0x3000 | Quanta Optical Touch |
|   0x0408 | Quanta           | 0x3001 | Quanta Optical Touch 3001 |
|   0x0408 | Quanta           | 0x3008 | Quanta Optical Touch 3008 |
|   0x0457 | SiS Touch        | 0x9200 | SIS9200 Touch |
|   0x0457 | SiS Touch        | 0x0817 | SIS817 Touch |
|   0x0457 | SiS Touch        | 0x1030 | SIS1030 Touch |
|   0x1f87 | Stantum          | 0x0002 | MTP |
|   0x0483 | Stantum STM      | 0x3261 | MTP STM |
|   0x1403 | Stantum SITRONIX | 0x5001 | MTP SITRONIX |
|   0x1784 | TopSeed 2        | 0x0016 | TopSeed 2 Peripad 701 |
|   0x1e5e | Touch Intl       | 0x0313 | Touch International Multi-touch |
|   0x227d | Unitec           | 0x0709 | Unitec USB Touch 0709 |
|   0x227d | Unitec           | 0x0a19 | Unitec USB Touch 0A19 |
|   0x0fb8 | Wistron          | 0x1109 | Wistron Optical Touch |
|   0x2505 | XAT              | 0x0220 | XAT CSR |
|   0x1477 | Xiroku           | 0x1006 | Xiroku SPX |
|   0x1477 | Xiroku           | 0x1007 | Xiroku MPX |
|   0x1477 | Xiroku           | 0x100e | Xiroku CSR |
|   0x1477 | Xiroku           | 0x1021 | Xiroku SPX1 |
|   0x1477 | Xiroku           | 0x1022 | Xiroku CSR1 |
|   0x1477 | Xiroku           | 0x1023 | Xiroku MPX1 |
|   0x1477 | Xiroku           | 0x1024 | Xiroku SPX2 |
|   0x1477 | Xiroku           | 0x1025 | Xiroku CSR2 |
|   0x1477 | Xiroku           | 0x1026 | Xiroku MPX2 |
|   0x14c8 | Zytronic         | 0x0005 | Zytronic ZXY100 |




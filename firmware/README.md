## Getting Started
Here you can download/find the firmware (.uf2 file) you want.
### 1. Choose version. 
In the future, there may be other firmware from other sources that can be offered for download here.

### 2. Flash your firmware
##### Enter bootloader mode:
The method varies for other boards, but on the Pi Pico for example you can hold the BOOTSEL button while plugging it in and it should also enter the bootloader.
Alternatively you can bind the `QK_BOOT` key and press it to have the MCU reboot into bootloader. By default this is bound to the press of the bottom right encoder on the second layer.

The controller should reboot and enter the bootloader mode automatically - you will see a flash drive pop up on you PC called RPI-RP2

##### Copy firmware:
You can take your *.uf2 file and copy it to the mounted drive. It will unmount and reboot itself. If the firmware flashing process succeeded, you will have a working keyboard. If not, please repeat the procedure. Since the bootloader is etched into ROM, it can’t be bricked. You are very unlikely to break something.

### Submit firmware
If you would like to submit firmware, please write a short text at the bottom describing what your firmware can do and which version of the circuit board was used. Also indicate who created it and add any other relevant information.
As always, create a fork and send a pull request.

I accept no liability for damage!

----------
----------

## Vial RGB Firmware
Developed by [FabiClawZ](https://github.com/FFS2309)

qmk: [qmk firmware](https://github.com/FFS2309/qmk_firmware/tree/17b06e-master/keyboards/simon99de/17b06e) ||
vial: [vial firmware](https://github.com/FFS2309/vial-qmk/tree/17b06e-vial/keyboards/simon99de/17b06e)


Firmware File: [simon99de_17b06e_rgb_vial.uf2](simon99de_17b06e_rgb_vial.uf2)

### Functions
* All 17 keys are assignable (differently for each layer). (The 17th key is intended for switching layers.)
* All 6 encoders are adjustable differently for each layer.
* It currently has 4 layers.
* 4x4 RGB lighting. (Can be changed)
* You have 100 macros available
* The display (OLED) shows the current layer and whether Caps Lock and Numpad are on or off.
The display turns off after 60 seconds to prevent screen burn-in.

The current version is only compatible with Vial, as it hasn't been added to qmk yet!

#### Picture:

| ![Default OLED 1](img/default-oled1.webp)  | ![Default OLED 2](img/default-oled2.webp) | ![Default OLED 3](img/default-oled3.webp) | ![Default OLED 4](img/default-oled4.webp) |
| ------------- | ------------- | ------------- | ------------- |

#### 
----------

## No-RGB Vial Firmware
Developed by [FabiClawZ](https://github.com/FFS2309)

qmk: [qmk firmware](https://github.com/FFS2309/qmk_firmware/tree/17b06e-master/keyboards/simon99de/17b06e) ||
vial: [vial firmware](https://github.com/FFS2309/vial-qmk/tree/17b06e-vial/keyboards/simon99de/17b06e)

Firmware File: [simon99de_17b06e_no-rgb_vial.uf2](simon99de_17b06e_norgb_vial.uf2)

### Functions
* All 17 keys are assignable (differently for each layer). (The 17th key is intended for switching layers.)
* All 6 encoders are adjustable differently for each layer.
* It currently has 4 layers.
* You have 100 macros available
* The display (OLED) shows the current layer and whether Caps Lock and Numpad are on or off.
The display turns off after 60 seconds to prevent screen burn-in.

The current version is only compatible with Vial, as it hasn't been added to qmk yet!

#### Picture:

| ![No-RGB OLED 1](img/No-RGB-oled1.webp)  | ![No-RGB OLED 2](img/No-RGB-oled2.webp) | ![No-RGB OLED 3](img/No-RGB-oled3.webp) | ![No-RGB OLED 4](img/No-RGB-oled4.webp) |
| ------------- | ------------- | ------------- | ------------- |

#### 

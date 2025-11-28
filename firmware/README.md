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

## Default Firmware
Developed by [FabiClawZ](https://github.com/FFS2309)

qmk: [qmk firmware](https://github.com/FFS2309/qmk_firmware/tree/17B06E)

Firmware File: [BETA! simon99de_17b06e_rgb_vial.uf2](beta-simon99de_17b06e_rgb_vial.uf2)

### Functions
* All 17 keys are assignable (differently for each layer). (The 17th key is intended for switching layers.)
* All 6 encoders are adjustable differently for each layer.
* It currently has 4 layers (beta).
* 4x4 RGB lighting. (Can be changed via keys in the beta.)
* The display (OLED) shows the current layer and whether Caps Lock and Numpad are on or off.
In beta, the display turns off after 60 seconds.

The beta is only compatible with Vial!

#### Picture:

| ![Default OLED 1](img/default-oled1.webp)  | ![Default OLED 2](img/default-oled2.webp) | ![Default OLED 3](img/default-oled3.webp) | ![Default OLED 4](img/default-oled4.webp) |
| ------------- | ------------- | ------------- | ------------- |

#### 



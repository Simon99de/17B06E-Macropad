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




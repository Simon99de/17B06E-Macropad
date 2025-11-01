# The project is still under development!
#


# 17B06E-Macropad
Simple 4x4 (+1) numpad with 6 rotary encoders. Powered by QMK via Waveshare RP2040-Plus. 

### What does 17B06E mean?
I chose the name 17B06E-Macropad because it describes everything the Macropad has. 17 Buttons + 6 Encoders. It also has RGB and a small OLED display.
The top button is used to switch profiles, giving you 16 x 4 (or more/less) buttons at your disposal, with the current profile shown on the display.

### sources / what was used:
I used the KiCad template from [dumbpad](https://github.com/imchipwood/dumbpad/) to create this project.


## Getting Started
To build your own 17B06E Macropad, you must first follow a few steps. The following describes the minimum requirements you need to assemble a dumbpad. 
#### 1. Choose version. 
You can choose from one of the different versions shown in the step above.
#### 2. Order your parts. 
Every board needs at least the following components but check the right folder for your parts list.
* 1x PCB
* 17x Kailh Hotswap Sockets (rev 2)
* 17x MX-style mechanical switches
* 22x 1n4148 diodes (thru hole)
* 1x Waveshare RP2040-Plus, Raspberry Pi Pico or pin-compatible MCU based on RP2040
* 6x EC11 rotary encoder with pushbutton (7-pin)
* (optional) 16x SK6812 mini e LEDs
* 1x 0.91" 128X32 OLED Display (Please note the pinout; there are different ones, and it must also be +5V compatible.)
* (Pin header for the OLED display + for the MCU) 1x4 male headers + 1x4 female headers and ...

#### 3. Assemble your 17B06E-Macropad
For this step you will need a minimum of a soldering iron and a pair of tweezers
- Solder the diodes, switches, and Waveshare RP2040-Plus to the PCB

#### 4. Flash your firmware
You can use QMK to create and flash firmware to your 17B06E-Macropad. You can configure every key to you can use the QMK configurator. Head over to the [QMK configurator](https://config.qmk.fm/#/friedrich/LAYOUT) and select 17b06e_macropad/[your version]. Once you have configured your board, click on compile and then on firmware to download the firmware. Check [qmk_firmware/keyboards/17b06e_macropad](https://github.com/qmk/qmk_firmware/tree/master/keyboards/17b06e_macropad) for compiling & uploading instructions




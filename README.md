# r36s-input-tester
Input Tester to check all the buttons and joysticks on the R36S handheld console
Last updated 8 Dec 2024

# Installation instructions
* download the .love package
* place the .love package in the love2d folder on your ROMS SD card
* boot the console and scroll to the Love2D emulation section and select to see InputTester
* select InputTester to run the utility

# Things to note
* By default, the FN, L3 and R3 buttons are not mapped
* L3 and R3 can be manually mapped by editing the controls/InputTester.gptkg file in the love2d folder
* InputTester utility might need to run once before the .gptkg file appears
* edit it so that L3 = 1 and R3 = 2 for InputTester to detect them

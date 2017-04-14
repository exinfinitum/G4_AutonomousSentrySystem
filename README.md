##ECE532 Group 4: Autonomous Sentry System

This project uses the OV7670 PMod for the Digilent Nexys 4 DDR board in order to track a target using a laser pointer. The target tracking is done by using colour matching with a resolution-reduced version of the video feed; by default the colour matching points the laser at the reddest area in its field of view.

To use this code, open 
> src/ECE532/Sentry_Gun_V0.1/Sentry_Gun_V0.1.xpr 

in Vivado, and build/run the project, then export a bitstream and run the C code in SDK.

The down button will switch the connected VGA monitor to display the "colour score" - how likely the target is to be in the field of view - when held down, else the monitor will display the video feed from camera.

### Repository Structure

Report, final presentation slides, and demonstration videos are contained in docs,
while src/ECE532 contains the actual project files.

### Authors

Bryon Leung and Yan Liu


# Miami University ECE 448/9 Senior Design Project Report
## Power Measurement of a Computing System (Fall 2021/Spring 2022) <br> <br> By: Owen Hardy ('22), Sam Rutschilling ('22), Jordan Smith ('22) <br> <br> Dr. Peter Jamieson, Dr. Mark Scott (Advisors)

## Table of Contents
**[Abstract](#abstract)**<br>
**[Project Background & Research](#project-background--research)**<br>
**[Solution Implementation](#solution-implementation)**<br>
**[Data Findings & Interpretation](#data-findings--interpretation)**<br>
**[Future Project Goals](#future-project-goals)**<br>
**[Conclusion](#conclusion)**<br>

# Abstract
The original goal of this project was to create a power measurement system that could log the power consumption of various perophirals plugged into a power strip.  This would give an idea of how much power each piece of equipment was using at any given time.  

Before work on the project began, we changed the overall scope of the project to determine the power consumption on a Raspberry Pi for various Python and Objective-C scripts.  These scripts will call several different functions including sending email messages, writing to files, accessing webpages, and performing basic arithmetic operations. This has the ultimate goal of calculating power and cost required to complete operations such as sending emails with or without an image in the signature line or autocompleting a line of text in a search box.

# Project Background & Research

# Solution Implementation
<p align="center">
  <img height="600" src="/Diagrams/Hardware%20setup.drawio.png">
</p>

(not the what, more the data)
# Data Findings & Interpretation
* Python Addition/Subtraction/Multiply/Divide print
* Python Addition/Subtraction/Multiply/Divide no print
* Python Write to file
* Objective-C Write to file
* Python LAN ping print
* Python LAN ping no print

# Future Project Goals
# Conclusion

# Ethical Impact
There were not many ethics decisions required in this project, since it is research based on existing products and services. There could, however, be an ethical impact stemming from the results of the research. This research is designed to determine the cost of small menial computer tasks that are automatically completed in the background on devices many times a day. The sum of all the power used by these operations could prove to be incredibly large, and ethical considerations into weather the power usage cost of having these operations versus there small added benefit are really necessary. The main ethical considerations from this project stem from the results, which could show the large amount of power used globally for computer tasks that have a very small added benefit.

# Engineering Decisions
The main engineering decisions made for this project were decisions related to collecting and storing the current usage information from the raspberry pi. The test raspberry pi is a raspberry pi 3B+ with a micro USB power input that can draw up to 2A at 5VDC. There are plenty of small current measurement devices availible for Testing USB power consumption, but none have a easily availible method to record the data, especially at a high sample rate. After verifying current usage of a few basic scripts (ping scripts) it was determined that a Texas Instruments INA219 based sensor could be used to record data. This sensor PCB has a shunt resistor and a TI INA219 sensor, along with everything necessary for I2C serial communication. A arduino UNO was chosen to connect the sensor to a computer for data storage due to its low cost and ease of programming with libraries availible for the sensor.

Other engineering decisions made for this project so far have included the decision to use a SQLITE file to store the current usage versus alternative formats such as .csv. SQLITE was chosen because of its inherent stability over .csv, in that it is much more likely to be corrupted if it is closed improperly.

# Our notes (to be ommitted or relocated)
Be sure to discuss:
* ABET: What decisions and why, ethical impact

Software Utilities used:

https://sqlitebrowser.org/

https://www.anaconda.com/products/individual#Downloads

https://raspberrytips.com/mail-server-raspberry-pi/ (local mail server)

Annaconda Notes:
- Anaconda does not activate correctly on windows unless you open vscode through Anaconda Command Prompt
- Use the command `code .` to start VSCode from Anaconda
- Browse through the folders from there in order to find the github local file location
- This should stop from getting errors related to "dll not found" when importing packages that are actually installed through Anaconda.

https://code.visualstudio.com/docs/remote/ssh

https://code.visualstudio.com/

Notes for VSCode and Arduino:
- Must open arduino .ino file from folders in arduino otherwise it will not find the .json configuration file and will not work correctly

https://www.raspberrypi.org/software/operating-systems/

https://learn.adafruit.com/adafruit-ina219-current-sensor-breakout/arduino-code

https://www.diagrams.net/




Python dataloging program must have sqlite3 and pyserial packages installed.
On windows these can be installed using the Anaconda package manager and the following two commands.
(Anaconda must be installed first: anaconda.org)

Run the following commands in the anaconda command window:

   SQLITE3:
     
     conda install -c blaze sqlite3

   PYSERIAL:
    
    conda install -c anaconda pyserial

Begining tests were completed using:

- Raspberry Pi 3B+
- Ubiquiti Edgerouter EX
- generic USB power measurement meter
- FLUKE 87V Multimeter

Datalogging tests also included:

- INA219 current measurement
- Arduino UNO serial communication with computer


Testbench setup:
- Ubiquiti Edgerouter setup to isolate network traffic for the tests
- router setup with IP address of 10.10.10.1 to reduce the risk it is on the same subnet as test computers (further mitigated by virtual machines)
- router has login setup as miami/redhawk
- raspberry pi login is standard load of raspbery pi OS (pi/raspberry) and IP address is 10.10.10.3
- Program accessed via visual studio code remote SSH from windows virtual machine isolated from network.
- Desktop access is also availible to the raspberry pi through VNC viewer

Test method for determining the required resolution:
1. Connected the meter in between the Raspberry pi and 5V power supply
2. Wait for the Raspberry Pi to boot and current draw to stabilize
3. Connect to the raspberry pi from visual studio code remote-SSH
4. Record the current increase and the time the script took to complete

Average time was approx 5 seconds, current increased from 0.48 amps to 0.71 amps


Test method for datalogging:
1. Connect the current measurement Ardunio (with attatched current measurement IC) to laptop with python datalogging program
2. Connect the incoming 5V power to the raspberry pi to the current/voltage measurement chip
3. Wait for the raspberry Pi to boot and current draw to stabilize
4. Start datalogging using datalogging python script.
5. After a few seconds, start the ping script, and then wait for it to end
6. press ctrl+c on test computer to end execution of the datalogging script

2021-10-04

Changed the Test measurement setup and re ran test scripts.
This time the arduino and raspberry pi were connected to the same ground, so the voltage measurements worked correctly.

After measuring the power usage for running the ping script we ran scripts to determine the power usage various parts of this script may have consumed.
One of these was printing a counting number out to the termineal display, this script took approx 0.02 seconds to run, with an insteneous power draw.

From ping script: It takes 0.018s for each ping.

We then changed this to include a wait statement so that it would take approximitley the same amount of time to run as the other scripts.

This was also applied to the script that counts to 500 without printing to the terminal as this script completes in 0.001071s

Obviously this approach may have issues, considering now there is a "sleep()" timer command also consuming power.

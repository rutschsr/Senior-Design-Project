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

Before work on the project began, we changed the overall scope of the project to determine the power consumption on a Raspberry Pi for various Python and Objective-C scripts.  These scripts will call several different functions including sending email messages, writing to files, accessing webpages, and performing basic arithmetic operations.

# Project Background & Research

# Solution Implementation
<p align="center">
  <img height="600" src="/Diagrams/Hardware%20setup.drawio.png">
</p>

(not the what, more the data)
# Data Findings & Interpretation
<!--Add charts with data from averages for each of the below -->
* Python Addition/Subtraction/Multiply/Divide print
* Python Addition/Subtraction/Multiply/Divide no print
* Python Write to file
* Objective-C Write to file
* Python LAN ping print
* Python LAN ping no print
  
  Our Python multiplication program multiplied by a constant of two. This means that it was equivalent to a left shift, and the Python interpreter likely simplified this event, which is why the power consumption recorded was so low.

| Operation | Average Increase in Power (w) | Power Usage / Computing Event (W/s)|
| ----------- | ----------- | ------ |
| Python LAN Ping & Print | 0.25 |  |
| Python LAN Ping No Print | 0.19 |  |
| Python Addition & Print | 0.904 |  |
| Python Subtraction & Print | 0.896  | 0.000002006754176 |
| Python Multiplication by Constant 2 & Print | 0.145 | 0.0000001696257125 |
| Python Division & Print | 0.189 |  |
| Python Addition No Print | 0.447 |  |
| Python Subtraction No Print | 0.643 | 0.000001060559699 |
| Python Multiplication by Constant 2 No Print | 0.195 | 0.00000017335047 |
| Python Division No Print | 0.124 |  |
| Python Write To File | 0.42 | 0.000001886 |
| Objective-C Write to File | 0.414 | 0.000000072763925056582 |

# Future Project Goals
# Conclusion




<!-- # Our notes (to be ommitted or relocated)
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
>>>>>>> parent of a49f60a (Update README.md) -->

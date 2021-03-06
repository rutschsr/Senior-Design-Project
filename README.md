Send email via command line: https://unix.stackexchange.com/questions/223636/sendmail-attachment

# Experiment Write-Up
We have the Raspberry Pi and laptop connected on the same LAN network.  We can use a terminal on the laptop to SSH into the Pi to execute our test scripts.  An I2C-enabled current sensor measures the current between the Raspberry Pi and the 5V USB Power Supply.  An Arduino reads the I2C data from the sensor and prints it out via Serial.  A Python script runs on the host laptop that enters the data from the USB Arduino Serial to a SQL database.  
# Methodology
Various Python scripts have been developed to perform different computing operations on a Raspberry Pi which operates with 5V DC.  There are scripts that test disk access, math operations, printing to console, loops, and images transfer over the network.  When these scripts are executed, the power consumption of the Pi is observed and recorded.  With this data recorded, we are able to determine average power consumption per operation (and by extension monetary energy cost) and extrapolate over long time periods of time.
# What we are doing
* Setting up our scp scripts to determine power consumption for different image files with trials using all combinations of the following
  * 3 images (Miami "M" logo, Red Hawk logo, headshot)
  * 3 resolutions (50%, 100%, 200% original resolution)
  * 2 file types (BMP and PNG)
  * Running Python script on Pi
    * Sending from Pi to laptop
    * Sending from laptop to Pi
  * Running Python script on laptop
    * Sending from Pi to laptop
    * Sending from laptop to Pi

# How we are doing
We are continuing to collect data for all of our test.  We're trying to make sure to not make errors with our data collection since there is so much data.


<!---



# Miami University ECE 448 Senior Design Project Report
## Power Measurement of a Computing System (Fall 2021)
### By: Sam Rutschilling ('22), Jordan Smith ('22), & Owen Hardy ('22)
### Advisors: Dr. Peter Jamieson & Dr. Mark Scott
<br><br><br><br>
<p align="center">
  <img width="600" src="./Photos/title.jpeg">
</p>

<div style="page-break-after: always"></div>

## Table of Contents
**[Abstract - 3](#abstract)**<br>
**[Introduction - 3](#introduction)**<br>
**[Project Background - 4](#project-background)**<br>
**[Project Research - 4](#project-research)**<br>
**[Solution Implementation - 5](#solution-implementation)**<br>
**[Data Findings & Interpretation - 9](#data-findings--interpretation)**<br>
**[Future Project Goals - 11](#future-project-goals)**<br>
**[Conclusion - 11](#conclusion)**<br>
**[Ethical - 12](#ethical)**<br>

<div style="page-break-after: always"></div>

# Abstract
After some time had passed in-between semesters, the scope of the project to develop a hardware solution that could measure the power consumption of various computing tasks or a small microprocessor system.

With this goal in mind, we began developing a list of various computing operations we wanted to measure the power consumption for.  This list includs several simple scripts that performed different functions including sending email messages, writing to files, accessing webpages, and performing basic arithmetic operations. This allows us to understand the power consumption of small computing tasks and their cost.  What our team wants to understand from our data collection was how much power these different operations consume and determine tasks that required significantly more energy than others.

# Introduction
Our team's focus this first semester of the project was to determine the feasibility of measuring power draw from a computing system as a whole.  Very early on, a decision was made to conduct our experiments on a Raspberry Pi SBC.  We weren't sure if we would be able to observe power changes when running a script, so we thought it best to initially try on a Raspberry Pi since they have very low power consumption for a system running a full OS.  A typical desktop PC may <b>(1)</b> consume several hundred watts at idle and <b>(2)</b> across several different DC voltage rails.  These two factors could make data collection on this sort of system complex, so we stuck with the Raspberry Pi as a proof of concept.  

<div style="page-break-after: always"></div>

# Project Background
Our team and advisors came up with a small list of scripts for which we wanted to monitor power consumption. This list can be seen below.
* Arithmetic (add/subtract, multiply, divide)
* Sending emails
* Writing to disk (SD card on RPi)
* Printing to console
* Pinging
* Python vs. Objective-C

As mentioned earlier, this semester's focus was a proof of concept. We knew that eventually, we'd want to monitor power consumption for more complex computing events such as the autosuggest feature on the Google search bar. We wanted to stick with more rudimentary operations so we could more easily validate our findings. Once we had our test parameters set for what sorts of operations we'd be performing on our system, we'd have to move on to research methods of measuring power draw in our specific test environment that we'd defined with our scripts.

# Project Research
We needed to research the power draw characteristics for our system which was a Raspberry Pi 3B+ running Raspbian OS. The Pi was to be interfaced over the network via SSH so the only connection to the Pi besides the power supply was an ethernet cable. No external monitors/mice/keyboards we plugged into the system. To determine the power draw characteristics with the Pi, we simply needed to measure the current draw of the system at idle as well as while one of any of the test scripts was running. This would tell us the current range we should expect to be measuring with our hardware solution.

A Fluke 87V multimeter was set to its current measuring function and connected in series with the 5V lab bench power supply to the Raspberry Pi's power input. Once the Pi had booted and current fluctuations had stopped, the Fluke measured a current draw of approximately 470mA. According to the Pi's online user guide, this falls within the expected value. We ran one of our basic arithmetic scripts and measured a maximum current draw of approximately 700mA. These findings did surprise us as we weren't expecting such a significant increase in power draw during the execution of the script. This made our job easier since we knew that our current measuring sensor wouldn't have to have as high of granularity as we would have thought.

We found the Texas Instruments INA219 current and power monitoring IC. The IC's datasheet defines a maximum current measurement rating of 3.2A and a maximum voltage of 26V. This falls well within our test environment characteristics which we saw draw up to 700mA at 5V. The datasheet reports a current measuring resolution of 0.8mA which should be plenty of accuracies when we saw our system current spike from ~470mA to ~700mA of. The INA219 operates with a 3 to 5.5V power supply and communicates over I2C. These are all ideal characteristics for our test environment.

<div style="page-break-after: always"></div>

# Solution Implementation

<p align="center">
  <img width="800" src="./Diagrams/Hardware%20setup%20Fall.png">
</p>

 **Figure 1:** Diagram of the complete Test Computing system built in lab.
Diagram of the complete computing system. The measured system is the Raspberry Pi 3B+ at the center of the layout. The Arduino is used for data collection, and the router is used for communicating with the Raspberry Pi as well as planning for future use.

The hardware implementation for our lab test bench included the afformentioned Texas Instruments current and power measurment IC as seen at the center of *Figure 1.* A data collection system seperate from the tested Raspberry Pi was necessary since if we used the Pi perform the data logging, our power draw would be artificially elevated from this operation running on the Pi at the same time we were running our test script.  The INA219 current and power measurement IC interfaces over I<sup>2</sup>C and an Arduino library is availble from manufacturer Adafruit for interfacing with this sensor.  An Arduino Uno was used to read the data from the sensor and print out the data over USB serial to a PC  where it was logged using a script that utilized the PySerial library. The Design Under Test can be seen at the center of *Figure 1,* The Raspberry Pi 3B+ is the only device on the load side of the INA219 current and power sensor. The power consumption of the Pi was the only value measured by the system. Also important to note with this system, the ethernet network connection of the Raspberry Pi also consumes some power, and this power consumption was not measured in our tests. The connection, and SSH connection did exist in all of our tests, during the idle period, and during the computing events, so its power consumption is included in the idle values. The voltage source in the top left of *Figure 1* powered the INA 219 current and power measurement sensor, as well as thhe Raspberry Pi 3B+ design under test. The ground for the system was connected to the Arduino Uno used for data collection, but since the Arduino had a USB serial connection for data transmission, and due to the behavior of the Arduino, the Arduino was powered by the PC. The ground of the arduino and power measurement IC and the Design Under Test were connected together after we encountered issues accuratley measurin the voltage in the system. The voltage measurements were important as well as the current measurement because the value we are interested in is the Power value. The formula for power is P=V*I, so both current and voltage values are important. 

We used SQLite to store the data instead of other formats such as .txt (tab-delimited text) or .csv (comma-separated value). SQLITE formatting is very similar to standard server/client SQL commonly used to store data, except it is a single user file, with no server, users, logins, or other backend configuration. SQLITE is open source and one of the most common database engines used today. SQLite stores data in tables and columns and it is much less likely than other formats to become corrupt if it is incorrectly closed or not closed at all. SQLite also allows easy storage of the date/time value that data was recorded at as well, which allows storing the exact time a data point was recieved. SQLite also allows easy searching and calculation of averages of data sets as it allows the use of all common SQL (structured query language) queries and commands. This allowed calculation of the average idle and operation values to be done using just a single query line in the open-source DB Browser for SQLite. These same queries were also used to calculate the time values for each of these scripts. That data for average time/computing event, and the average power increase was then used to calculate the average power consumption for each computing event. This saved a large amount of time compared to having to create more scripts to calculate these average values. A python library exists for SQLITE which we use in a script to store the data that is streaming in via a serial connection every 10ms from the Arduino seen on the left side of *Figure 1*. Due to the widespread use and open-source nature of SQLITE, there is also a MATLAB function to directly import data from the format, which was used to produce graphs with a short script.

<div style="page-break-after: always"></div>


<br>

Most of the data collected was collected with a timing of 10ms, which means for every second there are 100 data points, which means that there are several thousand data points for most of the trials. This frequency of data collection is high enough to create enough data so that we can be confident our results are a true representation of the system's power consumption, both at idle and while performing a computing operation.

In the recorded data for each of the trials, some jumps and increases can be seen in the data, especially when viewed visually as in Figure 2 below. These are background tasks operating on the OS level and should not cause an issue as they are present in both the average baseline power consumption and the average operation power consumption.

<br>

<p align="center">
  <img width="1000" src="./Sqlite/PythonFileWriteFinal.png">
</p>

**Figure 2:** Shows a visual plot of the data from one of the trials. <!--specifically a file write test using Python. The jumps in the figure can be attributed to background OS calls in the Debian-based Raspberry Pi OS. The areas of lower consumption at the beginning and end of the figure are the standby power consumption, and the increased "plateaued" area in the center is the power consumption during the Python file write test.

<br>

The recording procedure utilized for all of the tests was quite simple. The test Raspberry Pi was powered on and connected to our test ethernet network router. The raspberry pi is powered through the INA219 power measurement IC. Next, an SSH (secure shell) connection was made over the network connection to the Raspberry Pi using Visual Studio Code Remote SSH. Through VSCode, the test scripts were uploaded to the pi and modified. Then for each test, the data collection python script was started on the data collection PC. After several seconds of standby data were collected, the test script for the Raspberry Pi was started through VSCode. The performance of both the recording script and the test script was monitored during the test to make sure there were no unexpected abnormalities. After the test script was done running, several seconds of standby data at the end were collected before stopping the data collection script. Both the SSH connection and the data collection were done using the same laptop. This process was repeated several times for each test operation to get a more accurate average of the power consumption.

Knowing the increase in power while an operation was functioning is useful, but because the events happen so quickly and we used repeated functions to show their power consumption the results need to be normalized to each individual operation. This is because some operations take longer than others to complete. While doing trials, we chose arbitrary values of the number of operations so that each trial would be at a minimum, approximately 0.25s long. This required significantly more trials for some of the operations than others.

<div style="page-break-after: always"></div>

To calculate the average time each individual computing operation took we simply took the average time it took for a recorded trial to take place, which is calculated from our SQLITE data and divided it by the arbitrary number of operations we tested during that trial. This calculated value is the average time per individual trial. Multiplying that value by the average increase in wattage between the standby and operation recorded for each trial gives the power consumed by each operation in watts per second. That value is then multiplied by a constant value of 2.778 E-6 to output the results in kWh, which is the industry standard value power is billed to consumers in. 

<div style="page-break-after: always"></div>

# Data Findings & Interpretation
(not the what, more the data)
Add charts with data from averages for each of the below
Equations for power analysis: Time for each operation = time/trials; Average Power an Operation (Watts)= Trials*Average Wattage; Average Power / Operation in kwh= Average in W/s *0.000000277778; Cost = kwh*cost (Nov 2021 Residential Duke energy cost in Oxford ($0.031482))

|ID| Script/operation | Average increase in power from idle (W) | Power use per computing event (W/s)| Energy use per computing event (kWh) |
|--| --------- | ----------- | ------ | --- |
|A| Python LAN Ping & Print | 0.25 | 2.860 E-3 | 7.944 E-10 |
|B| Python LAN Ping No Print | 0.19 | 1.968 E-3 | 5.465 E-10|
|C| Python Addition & Print | 0.904 | 3.478 E-5 | 9.662 E-12 |
|D| Python Subtraction & Print | 0.896  | 2.007 E-6 | 5.574 E-13 |
|E| Python Multiplication by Constant 2 & Print | 0.145 | 4.725E-4 | 1.312 E-10 |
|F| Python Division & Print | 0.189 | 7.652 E-4 | 1.426 E-10 |
|G| Python Addition No Print | 0.447 | 1.154 E-6 | 3.206 E-13 |
|H| Python Subtraction No Print | 0.643 | 1.057 E-6 | 2.9364 E-13 |
|I| Python Multiplication by Constant 2 No Print | 0.195 | 4.829 E-4 | 1.341 E-10 |
|J| Python Division No Print | 0.124 | 2.785 E-4 | 9.029 E-11 |
|K| Python Write To File | 0.420 | 1.184 E-6 | 3.290 E-13 |
|L| Objective-C Write to File | 0.414 | 7.276 E-8 | 2.021 E-14 |

**Table 1:** Shows data collected in first-semester tests

<div style="page-break-after: always"></div>

In our tests, the least consuming Python operations the add and subtract functions that did not print to the console, tests <b>G</b> and <b>H</b> in the table above which consumed 3.206 E-13 kWh and 2.936 E-13 kWh respectively.  This is in comparison to the highest consuming Python operation we measured, which was the Python ping and print to console trial. This trial, **A** in the table, consumed 7.994 E-10 kWh per computing operation. All of these tests were run with the same Raspberry Pi 3B+ and the same Python 3 interpreter. The large disparity in the power consumption of these operations can largely be attributed to the large difference in resources the two operations will take. The ping and print operation will have OS calls for networking, domain name services, printing to the screen, as well as counting calls. The Python add and subtract operations, only have OS calls for the addition and subtraction operations, which is why their power consumption is so similar and significantly smaller than the other Python operations.

Referring to events <b>K</b> and <b>L</b>, we can observe a much smaller power use for the Objective-C file write test at 2.021 E-14 kWh used compared to the Python file write test at 3.29 E-13 kWh used.  These findings make sense since Python scripts are executed in a virtual environment whereas Objective-C does not, so generally, Objective-C is considered to be a faster language.

Referring to the non-printing scripts <b>B</b>, <b>G</b>, <b>H</b>, <b>I</b>, <b>J</b> and the printing scripts <b>A</b>, <b>C</b>, <b>D</b>, <b>E</b>, <b>F</b>, we can see that printing to the console uses roughly about 55% more energy (taken as an average across all 5 test variants) than its non-printing equivalent.  Again, this findings makes sense since printing to the console requires more OS calls.  For one, since we're interfacing with the Pi via SSH, the print statement needs to be sent through than channel rather than something like an external display connected via HDMI.

The overall significance of this data is that we were able to successfully detect and measure changes in current consumption when various computing tasks were executed.  Our proof-of-concept was a success which will lead us into next semester's objectives where we want to measure energy use for more abstract computing tasks (see [Future Project Goals](#future-project-goals)).

<div style="page-break-after: always"></div>

# Future Project Goals
So far, the majority of what we have done is setting up the problem and basic testing to ensure our setup works as we'd expect. In the future, we plan to move on to the next step for the project, that is, the meat of the project. We will be setting up an email server and a script to send emails. Using these, we will be testing the different kinds of content that can be sent via email and how they affect power consumption.

After gathering data from the email servers, we will be looking into the Google Search Bar. Or, more specifically, the auto-fill feature of the search bar. The auto-fill feature of the Google Search Bar is a process that gives the user options to fill in what they've already typed. For instance, if the user typed "How to" into the search bar, Google might suggest that the query they're searching for is "how to commit murder", or "how to hide a body", or "how to remove the evidence". Our goal in this instance is to determine how much power having that auto-fill feature on at all times will take up over not having it on at all. To do this, we intend to use a Raspberry Pi to isolate the Google search engine as much as possible, then collect data with the auto-fill feature turned on and with it turned off. Then, we may test if there's a difference between if you're using the search bar and if it's sitting idle.

# Conclusion
In this report, we have presented an isolated system running on a Raspberry Pi. This Raspberry Pi is connected to an INA219 current monitor and an Arduino to collect the data. Using this Raspberry Pi and INA219 current monitor, we have proved that it is feasible to measure the power draw of a computing system as a whole. However, we have only tested this concept using basic processes, and we plan to test further using more complicated processes. 

We used SQLite to store our data because it is a more stable file format than file formats such as csv or txt. SQLite also provides the ability to directly manipulate the data using SQL queries, so we could easily separate the data into groups of where the operations were running and weren't running using dates, and then find the averages between all the gathered data points. Similarly, the INA219 was used over the Fluke 87V mulitmeter because it fit our needs better. The INA219 has a mugh higher sampling rate than the Fluke, so we were able to get more data in less time, and it has a higher resolution so the data is more accurate.

The processes we have tried are basic arithmetic, server pinging, and file writing alongside each of these processes accompanied by a print to console and a comparison between Objective-C and Python. Our results showed that Objective-C consumes less power than Python, making Objective-C a more power-efficient programming language. Arithmetic such as addition and subtraction cost less than arithmetic such as multiplication and division with pinging costing more than addition and subtraction as well. Testing the process with printing to the console increased the power draw even further. So far, our collection of data has shown that there is a difference between when the system is running on idle and when the processes are running, the processes increasing the consumption of the system. This difference is rather small, but the power draw can add up over time if the processes are run continually.

<div style="page-break-after: always"></div>

# Ethical
It is our responsibility as engineers to ensure that the systems we create are power efficient. Using power costs money and an inefficient program running on an inefficient system implemented into an inefficient machine will compound to cost a lot. It is not right to design systems this way, to intentionally make it so it consumes more power than is reasonable. Our goal as engineers is to design systems that a customer can rely on and doesn't cause them a net loss overall. We want to shed some light on what some commonly disregarded features cost.

It is also our responsibility as engineers to engage in life-long learning. In order to keep up with ever changing technology, we need to constantly be learning about it. There is every possibility that new technology will introduce a very high power process, or feature, that may be able to be turned off, or updated to be more efficient. If we keep ourselves up to date with technology and its nuances, we would be able to identify which process is causing such a high power draw through thorough testing and suggest ways to alter it to cost less.

Having a broad education is something an engineer needs to thrive. A broad education is key to understanding the wide range of people who might benefit from knowing how much power the processes they run on their devices cost. We live in a highly connected world and nearly everyone uses technology and consumes power on a near daily basis, so having an understanding of how people use their devices will serve to help them understand how to cut down on power consumption. 


# Our notes (to be omitted or relocated)
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
>>>>>>> parent of a49f60a (Update README.md) 

2021-11-15

Values implemented into table. Data analysis was done using the number of trials we completed, and high accuracy estimated values for time from the SQL statements. The method used to measure this was. Copy data from SQL statement file to notepad++ search and replace all data with the exception of the seconds part of the time out. Copy and paste into matlab, calculate the average time. Future goal would be to implement a python search and replace script to do this automatically, similar to what I (sam) have used in previous work projects.



Excel Spreadsheet PowerCalculations was used to calculate the power and time values. Inputs are WattageIdle, Wattage Operation, Average Time (calculated above) and Number of Operations. This greatly simplifies the work from doing it all by hand.

Multipication and Division Operations ran to / from a maximum value of: 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 (1E108), but due to the multiplication and division operations, this only results in a total of 359 operations taking place in either direction.

-->

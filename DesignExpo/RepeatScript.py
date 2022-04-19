import sys
import os
import subprocess
import random
import operator
import csv
import logging
import tempfile
import time

def run_command(command):
    print('----------------------------------------')
    print('Executing: '+command)
    pipe = subprocess.Popen(command, shell=True, bufsize=1, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, universal_newlines=True)
    #pipe.stdout.close()
    out, err = pipe.communicate()
    print (out)
    


print ("Number of arguments: %d" %  len(sys.argv))
print ("Argument List: %s" % str(sys.argv))






#numTrials = int(sys.argv[1])

i=0


TrialCMD1 = 'sshpass -p "rutschsr" scp 44mb.rtf sam@10.10.10.4:'
TrialCMD2= 'sshpass -p "rutschsr" scp sam@10.10.10.4/home/sam/44mb.rtf .'
TrialCMD3='sshpass -p "rutschsr" scp sam@10.10.10.4/home/sam/Redhawk_Logo_double.bmp .'

while True:

    print
    print
    print
    print("Test Pinging Web Address:")
    print
    print

    time.sleep(5)
    
    while i<500:
        exit_code = os.system("ping -c 1 -w2 srutschilling.net")
        print(exit_code)
        print(i)
        i=i+1

    print
    print
    print
    print("Test Sending Files To Remote:")
    print
    print

    time.sleep(5)
        
    i=0
    while i<20:
        run_command(TrialCMD1)
        print(i)
        i=i+1
    i=0

    print
    print
    print
    print("Test Recieving Files From Remote:")
    print
    print
    time.sleep(5)




    
    while i<20:
        run_command(TrialCMD2)
        print(i)
        i=i+1

    i=0
    

    print
    print
    print
    print("Test Recieving BMP Logo Images from Remote:")
    print
    print

    time.sleep(5)
    
    
    while i<20:
        run_command(TrialCMD3)
        print(i)
        i=i+1

    i=0

    print
    print
    print
    print("Test Sending BMP Logo Images To Remote:")
    print
    print

    time.sleep(5)
    
    
    while i<20:
        run_command(TrialCMD3)
        print(i)
        i=i+1

    i=0





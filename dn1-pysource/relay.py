import epics
import RPi.GPIO as GPIO
import time

#define Relay Pin
rly_ch1 = 26
rly_ch2 = 20
rly_ch3 = 21

#Setup
GPIO.setmode(GPIO.BCM)          #Pinning Number
GPIO.setup(rly_ch1, GPIO.OUT)   #Pin Mode
GPIO.setup(rly_ch2, GPIO.OUT)
GPIO.setup(rly_ch3, GPIO.OUT)

GPIO.output(rly_ch1, GPIO.HIGH) #Relay initial value - OFF
GPIO.output(rly_ch2, GPIO.HIGH)
GPIO.output(rly_ch3, GPIO.HIGH)

print("====Process Start====")
try:
    while 1:
        #=======================================>EPICS GET
        #Get Value
        rch1_buf = epics.caget('dn1:RelCh1')
        rch2_buf = epics.caget('dn1:RelCh2')
        rch3_buf = epics.caget('dn1:RelCh3')

	#=======================================>RELAY
        #To Relay 1
        if (rch1_buf == 1):
            GPIO.output(rly_ch1, GPIO.LOW)
        else:
            GPIO.output(rly_ch1, GPIO.HIGH)

        #To Relay 2
        if (rch2_buf == 1):
            GPIO.output(rly_ch2, GPIO.LOW)
        else:
            GPIO.output(rly_ch2, GPIO.HIGH)

        #To Relay 3
        if (rch3_buf == 1):
            GPIO.output(rly_ch3, GPIO.LOW)
        else:
            GPIO.output(rly_ch3, GPIO.HIGH)

except KeyboardInterrupt: # If CTRL+C is pressed, exit cleanly:
    GPIO.cleanup() # cleanup all GPIO  

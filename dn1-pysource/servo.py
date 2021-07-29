import epics
import RPi.GPIO as GPIO
from adafruit_servokit import ServoKit
import time

#===============> DEFINE
#Servo Name
Xs = 0
Ys = 1
Zs = 2
Phis = 3

#Position Variable
XPos = 0
YPos = 0
ZPos = 0
PhiPos = 0

#===============> INIT
kit = ServoKit(channels = 16)   #Servo channel total
for i in range (0, 15):
    kit.servo[i].angle = 0      #Servo initial value - 0 Degree

print("====Process Start====")

#===============> LOOP
while True:
    #Get From EPICS
    XPos = epics.caget('dn1:XPos')
    YPos = epics.caget('dn1:YPos')
    ZPos = epics.caget('dn1:ZPos')
    PhiPos = epics.caget('dn1:PhiPos')

    #To Servo
    kit.servo[Xs].angle = int(XPos)
    kit.servo[Ys].angle = int(YPos)
    kit.servo[Zs].angle = int(ZPos)
    kit.servo[Phis].angle = int(PhiPos)

    time.sleep(0.5)

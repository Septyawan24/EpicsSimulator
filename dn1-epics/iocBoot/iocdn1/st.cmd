#!../../bin/linux-arm/dn1

#- You may have to change dn1 to something else
#- everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/dn1.dbd"
dn1_registerRecordDeviceDriver pdbbase

## Load record instances
dbLoadRecords("db/dn1.db")
epicsEnvSet("STREAM_PROTOCOL_PATH", ".:../../dn1App/Db")
drvAsynSerialPortConfigure ("PS1","/dev/ttyUSB0")
asynSetOption ("PS1", 0, "baud", "19200")

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncxxx,"user=pi"

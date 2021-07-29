TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = dn1
# dn1.dbd will be created and installed
DBD += dn1.dbd

# dn1.dbd will be made up from these files:
dn1_DBD += base.dbd

# Include dbd files from all support applications:
dn1_DBD += asyn.dbd
dn1_DBD += stream.dbd
dn1_DBD += drvAsynSerialPort.dbd

# Add all the support libraries needed by this IOC
dn1_LIBS += asyn
dn1_LIBS += stream

# dn1_registerRecordDeviceDriver.cpp derives from dn1.dbd
dn1_SRCS += dn1_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
dn1_SRCS_DEFAULT += dn1Main.cpp
dn1_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#dn1_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
dn1_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE


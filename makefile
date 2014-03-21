SWIGCMD = swig
SWIGFILE = WPILib.i
SWIGOPTS = -lua -c++ -includeall

HEADERS = $(wildcard WPILib/*.h) $(wildcard WPILib/Buttons/*.h) $(wildcard WPILib/CAN/*.h) $(wildcard WPILib/ChipObject/*.h) $(wildcard WPILib/ChipObject/fpgainterfaceapi/*.h) $(wildcard WPILib/Commands/*.h) $(wildcard WPILib/Interfaces/*.h) $(wildcard WPILib/LiveWindow/*.h) $(wildcard WPILib/NetworkCommunication/*.h) $(wildcard WPILib/networktables/*.h) $(wildcard WPILib/networktables2/*.h) $(wildcard WPILib/networktables2/client/*.h) $(wildcard WPILib/networktables2/connection/*.h) $(wildcard WPILib/networktables2/server/*.h) $(wildcard WPILib/networktables2/stream/*.h) $(wildcard WPILib/networktables2/thread/*.h) $(wildcard WPILib/networktables2/type/*.h) $(wildcard WPILib/networktables2/util/*.h) $(wildcard WPILib/OSAL/*.h) $(wildcard WPILib/SmartDashboard/*.h) $(wildcard WPILib/tables/*.h) $(wildcard WPILib/visa/*.h) $(wildcard WPILib/Vision/*.h) $(wildcard WPILib/Vision2009/*.h)

wrapper: $(HEADERS) $(SWIGFILE)
	$(SWIGCMD) $(SWIGOPTS) $(SWIGFILE)


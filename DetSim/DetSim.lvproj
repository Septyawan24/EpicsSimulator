<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="11008008">
	<Property Name="SMProvider.SMVersion" Type="Int">201310</Property>
	<Property Name="varPersistentID:{64CF6300-20C7-44A3-99D5-933E1A48F727}" Type="Ref">/My Computer/DetSim.lvlib/Start</Property>
	<Property Name="varPersistentID:{BE994877-2C08-4145-B015-0CE4427322A4}" Type="Ref">/My Computer/DetSim.lvlib/Read</Property>
	<Property Name="varPersistentID:{CA287763-5837-4B4C-A028-F493E4A88517}" Type="Ref">/My Computer/DetSim.lvlib/Clear</Property>
	<Property Name="varPersistentID:{D621E096-1E46-4450-ADE4-DE9CF7F4E530}" Type="Ref">/My Computer/DetSim.lvlib/Count</Property>
	<Property Name="varPersistentID:{DB5B4D31-1614-4D9A-A664-C4300E1A9EAB}" Type="Ref">/My Computer/DetSim.lvlib/Stop</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="IOScan.Faults" Type="Str"></Property>
		<Property Name="IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="IOScan.Period" Type="UInt">10000</Property>
		<Property Name="IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="IOScan.Priority" Type="UInt">9</Property>
		<Property Name="IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="IOScan.StartEngineOnDeploy" Type="Bool">false</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="DetSim.lvlib" Type="Library" URL="../DetSim.lvlib"/>
		<Item Name="DetSim.vi" Type="VI" URL="../DetSim.vi"/>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>

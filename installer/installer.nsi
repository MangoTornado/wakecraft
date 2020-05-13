OutFile "WakeCraftInstaller.exe"
 
InstallDir $TEMP\WakeCraftInstaller
 
RequestExecutionLevel admin
 
Section
	
	SetOutPath $TEMP\WakeCraftInstaller
	File forge-installer.jar
	File WakeCraftModGrab.jar
	File WakeCraftJSONProfiler.jar
	ExecWait 'javaw.exe -jar $TEMP\WakeCraftInstaller\forge-installer.jar'
	ExecWait 'javaw.exe -jar $TEMP\WakeCraftInstaller\WakeCraftModGrab.jar'
	ExecWait 'msiexec /i $TEMP\OpenJDK8_openj9.msi'
	ExecWait 'javaw.exe -jar $TEMP\WakeCraftInstaller\WakeCraftJSONProfiler.jar'
	RMDir "$TEMP\WakeCraftInstaller"
	Delete "$TEMP\OpenJDK8_openj9.msi"
 
SectionEnd

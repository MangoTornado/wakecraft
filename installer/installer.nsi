!include WinVer.nsh
!include x64.nsh

Icon "Assets\wake.ico"
Caption "WakeCraft Installer"
Name "WakeCraft Mod Installer"
ManifestSupportedOS "all"
SpaceTexts "none"

VIAddVersionKey /LANG=1033 "ProductName" "WakeCraft Mod Installer"
VIAddVersionKey /LANG=1033 "CompanyName" "WakeCraft Dev Team"
VIAddVersionKey /LANG=1033 "LegalCopyright" "WakeCraft"
VIAddVersionKey /LANG=1033 "FileDescription" "Installer for WakeCraft modded minecraft server."
VIAddVersionKey /LANG=1033 "FileVersion" "1.9.2"
VIProductVersion "1.9.2.5"
VIFileVersion "1.9.2.5"

RequestExecutionLevel admin

OutFile "WakeCraftInstaller.exe"
 
InstallDir $TEMP\WakeCraftInstaller

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

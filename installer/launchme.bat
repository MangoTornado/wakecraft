echo off
cls
Color 0A
title Wakecraft Installer (V2)
echo Made By: Marioyoshi64
echo MAKE SURE THIS IS RUN USING ADMIN RIGHTS

:Menu
echo 1. Install Wakecraft
echo 2. Update Wakecraft (For V1.5.1 and beyond)
echo 3. Update Wakecraft (For V1.4.1 and below)
echo 4. Exit
set /p goto="choice: "
goto %goto%

:1
cls
echo Now we will install Wakecraft.
pause
cls
echo The first thing you will need to install is a custom Java executable called OpenJDK.
echo This reduces RAM usage significantly.
pause
start .\OpenJDK8_openj9.msi
echo Once you are done installing, press any button to continue.
pause
cls
echo Now we will install Forge.
echo This is the mod loader.
pause
start .\forge-installer.jar
echo Click the 'Install Client' button.
echo Once it is done installing, press any button to continue.
echo NOTE: The installer might take a couple second to boot up.
pause
cls
echo Now the installer will copy over the necessary files.
echo Press any key to copy the files.
pause
mkdir "C:\Program Files (x86)\Minecraft Launcher\.wakecraft"
xcopy /s /e /y ".\stuff" "C:\Program Files (x86)\Minecraft Launcher\.wakecraft"
pause
cls
echo Now for the final part, you need to copy and paste a section of code.
echo We will now open a text file containing that code.
echo Make sure you copy all of it.
pause
start notepad ".\launcher-profile.txt"
pause
cls
echo Good, now you copied it!
echo We will now open the file you need to paste it into.
pause
cls
start notepad "%appdata%\.minecraft\launcher_profiles.json"
echo Scroll down to where it says
echo   "profiles" : {
echo Under that, a few lines down, it should say
echo       "type" : "latest-release"
echo    }
echo Hit enter after that } and paste the code there.
echo Go back to the } and add a comma after it.
echo Save the file.
pause
cls
echo You're all done!
echo You can now close everything, launch Minecraft, and select the Wakecraft icon.
echo Enjoy!

:2
cls
mkdir "C:\Program Files (x86)\Minecraft Launcher\.wakecraft"
xcopy /s /e /y ".\stuff" "C:\Program Files (x86)\Minecraft Launcher\.wakecraft"
pause
cls
echo Update is done, now closing launcher.
pause

:3
cls
mkdir "C:\Program Files (x86)\Minecraft Launcher\.wakecraft"
xcopy /s /e /y ".\stuff" "C:\Program Files (x86)\Minecraft Launcher\.wakecraft"
pause
cls
echo Now for the final part, you need to copy and paste a section of code.
echo We will now open a text file containing that code.
echo Make sure you copy all of it.
pause
start notepad ".\launcher-profile.txt"
pause
cls
echo Good, now you copied it!
echo We will now open the file you need to paste it into.
pause
cls
start notepad "%appdata%\.minecraft\launcher_profiles.json"
echo Scroll down to where it says
echo   "profiles" : {
echo Under that, a few lines down, it should say
echo       "type" : "latest-release"
echo    }
echo Hit enter after that } and paste the code there.
echo Go back to the } and add a comma after it.
echo Save the file.
pause
cls
echo You're all done!
echo You can now close everything, launch Minecraft, and select the Wakecraft icon.
echo Enjoy!
pause

:4
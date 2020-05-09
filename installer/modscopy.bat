echo off

mkdir "%appdata%\.wakecraft"
xcopy ".\stuff" "%appdata%\.wakecraft" /E /Y /D
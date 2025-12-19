:: Save as: exec_test.bat
@echo off
setlocal enabledelayedexpansion

for /f "tokens=1-4 delims=/ " %%a in ('date /t') do set D=%%a
for /f "tokens=1-2 delims=: " %%a in ('time /t') do set T=%%a

set "now=%date:~10,4%-%date:~4,2%-%date:~7,2%_%time:~0,2%%time:~3,2%%time:~6,2%"
set "now=%now: =0%"

set "out=%TEMP%\bat_exec_test_%now%.txt"

echo Batch executed at %date% %time%> "%out%"

echo Batch script executed. Evidence file: %out%
pause

@echo off
set currentDir=%cd%

if {%1}=={} (set index=0) else (set index=%1)

if "%index%"=="0" (set logName=nox) else (set logName=Nox_%index%)

set logPath=.\BignoxVMS\%logName%\%logName%.vbox

:echo logPath=%logPath%

if not exist %logPath% goto pause

for /f tokens^=8delims^=^" %%e in ('findstr /i "5555" %logPath%') do (
set adbPort=%%e
)

echo %logName% adb port:%adbPort%

nox_adb connect 127.0.0.1:%adbPort%

:nox_adb devices

nox_adb -s 127.0.0.1:%adbPort% pull /data/anr/traces.txt .

echo ---------------------------------------------------------------------player bugreport content------------------------------------>>traces.txt
echo Please wait for about 3 minutes  ( ^^_^^ )

nox_adb -s 127.0.0.1:%adbPort% bugreport >>traces.txt

echo ---------------------------------------------------------------------player listening port content------------------------------->>traces.txt
netstat -ano -p tcp | findstr LISTENING >> traces.txt

:pause
pause

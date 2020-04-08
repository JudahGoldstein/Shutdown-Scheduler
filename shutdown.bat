echo off
echo [1]sec
echo [2]min
echo [3]hour
echo [4]now
echo [5]abort
SET /P unitIn=select time unit: 
if %unitIn% == 1 (SET ratio=1)
if %unitIn% == 2 (SET ratio=60)
if %unitIn% == 3 (SET ratio=3600)
if %unitIn% == 4 (shutdown /s)
if %unitIn% == 5 (shutdown /a
GOTO:eof)
SET /P durationIn=duration:
SET /a timeDelay= "%ratio%*%durationIn%"
shutdown /s /t %timeDelay%

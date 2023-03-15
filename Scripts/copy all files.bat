@echo off
:: variables
/min
SET odrive=%odrive:~0,2%
set backupcmd=xcopy /c /d /e /h /i /r /q /y /-Y
echo off
%backupcmd% "%USERPROFILE%\{WHATEVER_YOU_WANT}" "%drive%\{ADDRESS}"
@echo off 
cls
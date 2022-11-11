rem @echo off

echo %cd%
start /wait "" cmd /c install.bat

:l
if exist %temp%\331\is.open (start /wait "" cmd /c install.bat)
goto l
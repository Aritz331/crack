@echo off ::
set "vegasver=19"
title VEGAS Pro %vegasver% Crack ^| by aritz331_
if not exist %temp%\331 (md %temp%\331)
cd /d %temp%\331
echo.>is.open
chcp 65001 >nul
call :getlncol
call :ln
echo Downloading... This might take a while.
echo Descargando... Esto puede tardar unos minutos.
call :ln
echo Setup.exe
curl -kLO "https://gitlab.com/aritz331/bigstuf/-/raw/main/vegas/%vegasver%/Setup.exe" --progress-bar
echo.
echo vegas%vegasver%.exe
curl -kLO "https://gitlab.com/aritz331/bigstuf/-/raw/main/vegas/%vegasver%/vegas%vegasver%0.exe" --progress-bar
call :ln
call :vbmesg
wscript //nologo %temp%\331\mesg.vbs "Please install VEGAS Pro normally (wait for the setup to appear) and wait for another message box to appear, then the program will be ready to be used.\n\nPor favor, instale VEGAS Pro con normalidad (espere a que el instalador se inicie) y espere a que aparezca otro mensaje, entonces el programa estará listo para ser usado." "VEGAS Pro %vegasver%Crack | by aritz331_" 0 64
start /wait setup.exe
ren vegas%vegasver%0.exe _vegas%vegasver%0.exe
for /f "tokens=* delims=" %%i in ('dir "\vegas%vegasver%0.exe" /s /b') do (set "pathvegas=%%~dpi")
ren _vegas%vegasver%0.exe vegas%vegasver%0.exe
echo f|xcopy /y vegas%vegasver%0.exe "%pathvegas%"
pause
wscript //nologo %temp%\331\mesg.vbs "VEGAS Pro is ready.\n\nVEGAS Pro está listo." "VEGAS Pro %vegasver%0 Crack | by aritz331_" 0 64
del is.open

:vbmesg
(
	echo Set objArgs = WScript.Arguments
	echo Dim Arg(3^)
	echo For i = 0 to objArgs.Count - 1
	echo   Arg(i^) = Replace(objArgs(i^),"\n",vbNewLine,1,-1,1^)
	echo Next
	echo call Msgbox(Arg(0^),Arg(2^)+Arg(3^),Arg(1^)^)
)>mesg.vbs
exit /b

:getlncol
for /F "tokens=2 delims=:" %%a in ('mode con') do for %%b in (%%a) do (
   if not defined lines (
      set "lines=%%b"
   ) else if not defined cols (
      set "cols=%%b"
   )
)
exit /b

:ln
for /l %%i in (1, 1, %cols%) do (set /p "a=─") 0<nul
echo.

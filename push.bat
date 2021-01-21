@echo off
setlocal ENABLEDELAYEDEXPANSION

set "mo=%date:~4,2%"
if "%mo:~0,1%"=="0" set "mo=%mo:~1%"
set names=JANFEBMARAPRMAYJUNJULAUGSEPOCTNOVDEC
set /a "pos = 3 * %mo%" - 3
set "ti=!names:~%pos%,3!"

set "hh=%time:~0,2%"
if "%hh:~0,1%"==" " set "hh=%hh:~1%"
if %hh% LEQ 12 set tm=AM
if %hh% GTR 12 set tm=PM

set "msg=Updated : %date:~0,3%_%date:~7,2%%ti%_%hh%:%time:~3,2%%tm%"
rem echo %msg%

git add .
git commit -m "%msg%"
git push
pause
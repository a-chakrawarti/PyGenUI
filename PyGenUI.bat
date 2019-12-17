@echo off
title PyGenUI
Setlocal EnableDelayedExpansion
cd /d  "<PATH OF PYUIC5 EXE>" 
set /p "path=Drag & Drop the UI file:"
for %%Q in ("%path%") do (
	set "filename=%%~nQ"
)
echo %filename%
pause
pyuic5 -x %path% -o %filename%.py
move %filename%.py "C:\Users\%username%\Desktop\"
pause

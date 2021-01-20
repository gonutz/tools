@echo off
git clean -xdfn
if %errorlevel% neq 0 goto :eof
set "reply=y"
set /p "reply=Delete files? [ENTER / n]: "
if /i "%reply%" == "y" git clean -xdf

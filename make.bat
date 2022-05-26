@echo off

if "%~1"=="" goto usage
if "%~1"=="setup" goto setup
if "%~1"=="build" goto build
if "%~1"=="run" goto run

:usage
echo ./make.bat setup/build/run
goto eof

:setup
npm install
goto eof

:build
rem emsdk activate latest
cd cpp
.\build.bat
goto eof

:run
npm run start
goto eof

:eof

@echo off

if "%~1"=="" goto usage
if "%~1"=="setup" goto setup
if "%~1"=="build" goto build
if "%~1"=="run" goto run

:usage
echo ./make.bat setup/build/run
goto eof

:setup
call npm install
goto eof

:build
echo run the following commands first:
echo    scoop install emscripten
echo    emsdk install latest
echo    emsdk activate latest
echo start building ...
cd cpp
call build.bat
echo done. To see result, run: .\make.bat run
goto eof

:run
call npm run start
goto eof

:eof

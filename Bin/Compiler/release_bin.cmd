@echo off
echo.
echo ------------------------------------------------------------------------------
echo -- RELEASE BUILD - BINARIES                                                 --
echo ------------------------------------------------------------------------------
echo.

if not "%1"=="" goto ok
echo Usage: release_bin edition
goto exit
:ok

set edition=%1
shift

set release_params=-vl:0 -nd -tu:flex_%edition%

echo.
echo ----- Compiling RELEASE modules ----------------------------------------------
echo.
mkdir release
mkdir release\lib
mkdir release\bin
del /q release\lib\*.*
del /q release\bin\*.*
out.2\fjitc.exe %release_params% release_script.txt


rem %%TODO(ECLIPSE) Vybuildovat Eclipse

:exit

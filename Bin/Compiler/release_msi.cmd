@echo off
echo.
echo ------------------------------------------------------------------------------
echo -- RELEASE BUILD - INSTALLATION PACKAGE                                     --
echo ------------------------------------------------------------------------------
echo.

if not "%2"=="" goto ok
echo Usage: release_msi release edition
goto exit
:ok

echo.
echo ----- Updating binaries ----------------------------------------------
echo.

copy /y release\bin\mod_flex.so r:\gen\test\modflex\apache
if errorlevel 1 goto err_abort
copy /y release\bin\fjitc.exe r:\gen\test\modflex\bin
if errorlevel 1 goto err_abort
copy /y release\bin\mfweb_mod_flex.exe r:\gen\test\modflex\bin
if errorlevel 1 goto err_abort
copy /y release\lib\*.ctm r:\gen\test\modflex\lib
if errorlevel 1 goto err_abort
copy /y release\lib\*.dll r:\gen\test\modflex\lib
if errorlevel 1 goto err_abort


echo.
echo ----- Updating docs --------------------------------------------------
echo.

copy /y release\doc\*.pdf r:\gen\test\modflex\doc
if errorlevel 1 goto err_abort



echo.
echo ----- Building MSI ---------------------------------------------------
echo.

mkdir release
mkdir release\msi
del /q release\msi\*.*

"C:\Program Files\InstallShield\DevStudio 9\System\iscmdbld" -p "..\..\Tools\Setup\modFlex 4.0 %2 Edition\modflex.ism" -r "modFlex Release %1" -c COMP -a "modFlex Release" -e n
if errorlevel 1 goto err_abort

copy "..\..\Tools\Setup\modFlex 4.0 %2 Edition\modFlex\modFlex Release\modFlex Release %1\DiskImages\Disk1\modFlex.msi" release\msi\modflex.msi
if errorlevel 1 goto err_abort
goto exit

:err_abort
echo **** ERRORS found ****

:exit

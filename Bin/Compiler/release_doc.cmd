@echo off
echo.
echo ------------------------------------------------------------------------------
echo -- RELEASE BUILD - DOCUMENTATION                                            --
echo ------------------------------------------------------------------------------
echo.


mkdir release
mkdir release\doc
del /q release\doc\*.*


rem ... doplnit vol�n� XEPu pro p�eklad: 
rem      -- Flex - LRM
rem      -- modFlex - Getting started
rem      -- Ale�ovo u�ebnice

copy r:\gen\test\modflex\doc\*.pdf release\doc

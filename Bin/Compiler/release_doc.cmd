@echo off
echo.
echo ------------------------------------------------------------------------------
echo -- RELEASE BUILD - DOCUMENTATION                                            --
echo ------------------------------------------------------------------------------
echo.


mkdir release
mkdir release\doc
del /q release\doc\*.*


rem ... doplnit volání XEPu pro pøeklad: 
rem      -- Flex - LRM
rem      -- modFlex - Getting started
rem      -- Alešovo uèebnice

copy r:\gen\test\modflex\doc\*.pdf release\doc

@echo off
if not defined fcc_ver goto find_in
if %fcc_ver%==out goto find_out

:find_in
set eee=.\bin\
if exist %eee%fcc.exe goto found
set eee=.\in\
if exist %eee%fcc.exe goto found
set eee=.\Compiler\in\
if exist %eee%fcc.exe goto found
set eee=.\Bin\Compiler\in\
if exist %eee%fcc.exe goto found
set eee=.\Bin\Compiler\in\
if exist %eee%fcc.exe goto found
set eee=..\Bin\Compiler\in\
if exist %eee%fcc.exe goto found
set eee=..\..\Bin\Compiler\in\
if exist %eee%fcc.exe goto found
set eee=..\..\..\Bin\Compiler\in\
if exist %eee%fcc.exe goto found
goto notfound

:find_out
set eee=.\bin\
if exist %eee%fcc.exe goto found
set eee=.\out\
if exist %eee%fcc.exe goto found
set eee=.\Compiler\out\
if exist %eee%fcc.exe goto found
set eee=.\Bin\Compiler\out\
if exist %eee%fcc.exe goto found
set eee=.\Bin\Compiler\out\
if exist %eee%fcc.exe goto found
set eee=..\Bin\Compiler\out\
if exist %eee%fcc.exe goto found
set eee=..\..\Bin\Compiler\out\
if exist %eee%fcc.exe goto found
set eee=..\..\..\Bin\Compiler\out\
if exist %eee%fcc.exe goto found
goto notfound


:found
echo %eee%
call %eee%..\env_fcc.cmd %eee%fcc.exe %eee%..\..\..\Lib %*
if exist deploy.cmd call deploy.cmd
goto end
:notfound
echo ------------------------------
echo Sorry ..
echo compiler environment not found
echo ------------------------------
:end
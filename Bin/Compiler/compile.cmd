@echo off
echo .
echo ----- Compiling OUT ----------------------------------------------------------
echo .
mkdir out
del out\fcc.exe out\fcc.lst out\fcc.ctm
in\fcc.exe ..\..\Compiler\fcc\fcc.src -sdr:..\..\Compiler\ -sdr:..\..\lib -odx:out\ %1 %2 %3 %4
@echo off
echo .
echo ----- Compiling OUT 4 --------------------------------------------------------
echo .
mkdir out.4
del out.4\fcc.exe out.4\fcc.lst out\fcc.ctm
out.3\fcc.exe ..\..\Compiler\fcc\fcc.src -sdr:..\..\Compiler\ -sdr:..\..\lib -odx:out.4\ %1 %2 %3 %4

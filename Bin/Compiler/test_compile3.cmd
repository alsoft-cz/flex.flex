@echo off
echo .
echo ----- Compiling OUT 3 --------------------------------------------------------
echo .
mkdir out.3
del out.3\fcc.exe out.3\fcc.lst out\fcc.ctm
out.2\fcc.exe ..\..\Compiler\fcc\fcc.src -sdr:..\..\Compiler\ -sdr:..\..\lib -odx:out.3\ %1 %2 %3 %4

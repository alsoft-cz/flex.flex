@echo off
echo .
echo ----- Compiling OUT 2 --------------------------------------------------------
echo .
mkdir out.2
del out.2\fcc.exe out.2\fcc.lst out\fcc.ctm
out.1\fcc.exe ..\..\Compiler\fcc\fcc.src -sdr:..\..\Compiler\ -sdr:..\..\lib -odx:out.2\ %1 %2 %3 %4

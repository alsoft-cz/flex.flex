@echo off
echo .
echo ----- Compiling OUT 1 --------------------------------------------------------
echo .
mkdir out.1
del out.1\fcc.exe out.1\fcc.lst out\fcc.ctm
  out\fcc.exe ..\..\Compiler\fcc\fcc.src -sdr:..\..\Compiler\ -sdr:..\..\lib -odx:out.1\ %1 %2 %3 %4

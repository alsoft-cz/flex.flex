@echo off
echo .
echo ----- Compiling FJITC OUT 2 --------------------------------------------------
echo .
mkdir out.2
del out.2\fjitc.exe out.2\fjitc.lst out\fjitc.ctm
out.1\fcc.exe ..\..\Compiler\fjitc\fjitc.src -sdr:..\..\Compiler\ -sdr:..\..\lib -odx:out.2\ %1 %2 %3 %4

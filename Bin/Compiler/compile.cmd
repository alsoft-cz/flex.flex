@echo off
mkdir out
del out\fcc.exe out\fcc.lst
in\fcc.exe ..\..\Compiler\fcc\fcc.src -sdr:..\..\Compiler\ -sdr:..\..\lib -odx:out\
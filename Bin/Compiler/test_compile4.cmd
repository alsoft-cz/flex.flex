@echo off
mkdir out.4
del out.4\fcc.exe out.4\fcc.lst
out.3\fcc.exe ..\..\Compiler\fcc\fcc.src -sdr:..\..\Compiler\ -sdr:..\..\lib -odx:out.4\ %1

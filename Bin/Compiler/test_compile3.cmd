@echo off
mkdir out.3
del out.3\fcc.exe out.3\fcc.lst
out.2\fcc.exe ..\..\Compiler\fcc\fcc.src -sdr:..\..\Compiler\ -sdr:..\..\lib -odx:out.3\ %1

@echo off
mkdir out.1
del out.1\fcc.exe out.1\fcc.lst
  out\fcc.exe ..\..\Compiler\fcc\fcc.src -sdr:..\..\Compiler\ -sdr:..\..\lib -odx:out.1\ %1

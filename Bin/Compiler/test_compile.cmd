@echo off
mkdir out.1
mkdir out.2
mkdir out.3
mkdir out.4
del out.1\fcc.exe out.1\fcc.lst
del out.2\fcc.exe out.2\fcc.lst
del out.3\fcc.exe out.3\fcc.lst
del out.4\fcc.exe out.4\fcc.lst
  out\fcc.exe ..\..\Compiler\fcc\fcc.src -sdr:..\..\Compiler\ -sdr:..\..\lib -odx:out.1\
out.1\fcc.exe ..\..\Compiler\fcc\fcc.src -sdr:..\..\Compiler\ -sdr:..\..\lib -odx:out.2\
rem out.2\fcc.exe ..\..\Compiler\fcc\fcc.src -sdr:..\..\Compiler\ -sdr:..\..\lib -odx:out.3\
rem out.3\fcc.exe ..\..\Compiler\fcc\fcc.src -sdr:..\..\Compiler\ -sdr:..\..\lib -odx:out.4\

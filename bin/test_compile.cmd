@echo off
del out.1\fcc.exe out.1\fcc.lst
del out.2\fcc.exe out.2\fcc.lst
del out.3\fcc.exe out.3\fcc.lst
  out\fcc.exe ..\fcc\fcc.src -sdr:..\..\flex\ -sdr:..\..\lib\ -odx:out.1
out.1\fcc.exe ..\fcc\fcc.src -sdr:..\..\flex\ -sdr:..\..\lib\ -odx:out.2
out.2\fcc.exe ..\fcc\fcc.src -sdr:..\..\flex\ -sdr:..\..\lib\ -odx:out.3
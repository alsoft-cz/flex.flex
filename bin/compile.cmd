@echo off
del out\fcc.exe out\fcc.lst
in\fcc.exe ..\fcc\fcc.src -sdr:..\..\flex -sdr:..\..\lib -odx:out\
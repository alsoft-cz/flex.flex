echo. | time
mkdir temp
del temp\fcc.exe temp\fcc.lst temp\fcc.ctm
echo ----------------------------------------------------------------
    %1\fcc.exe -vl:0 -ctml:0 %2 ..\..\Compiler\fcc\fcc.src -sdr:..\..\Compiler\ -sdr:..\..\lib -odx:temp\
rem %1\fcc.exe -vl:0 -ctml:0 %2 ..\..\Compiler\fcc\fcc.src -sdr:..\..\Compiler\ -sdr:..\..\lib -odx:temp\
rem %1\fcc.exe -vl:0 -ctml:0 %2 ..\..\Compiler\fcc\fcc.src -sdr:..\..\Compiler\ -sdr:..\..\lib -odx:temp\
rem %1\fcc.exe -vl:0 -ctml:0 %2 ..\..\Compiler\fcc\fcc.src -sdr:..\..\Compiler\ -sdr:..\..\lib -odx:temp\
rem %1\fcc.exe -vl:0 -ctml:0 %2 ..\..\Compiler\fcc\fcc.src -sdr:..\..\Compiler\ -sdr:..\..\lib -odx:temp\
echo ----------------------------------------------------------------
echo. | time
echo ----------------------------------------------------------------

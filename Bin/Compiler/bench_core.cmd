time < y.txt
mkdir temp
del temp\fcc.exe temp\fcc.lst
echo ----------------------------------------------------------------
    %1\fcc.exe -vl:0 %2 ..\..\Compiler\fcc\fcc.src -sdr:..\..\Compiler\ -sdr:..\..\lib -odx:temp\
    %1\fcc.exe -vl:0 %2 ..\..\Compiler\fcc\fcc.src -sdr:..\..\Compiler\ -sdr:..\..\lib -odx:temp\
    %1\fcc.exe -vl:0 %2 ..\..\Compiler\fcc\fcc.src -sdr:..\..\Compiler\ -sdr:..\..\lib -odx:temp\
rem %1\fcc.exe -vl:0 %2 ..\..\Compiler\fcc\fcc.src -sdr:..\..\Compiler\ -sdr:..\..\lib -odx:temp\
rem %1\fcc.exe -vl:0 %2 ..\..\Compiler\fcc\fcc.src -sdr:..\..\Compiler\ -sdr:..\..\lib -odx:temp\
echo ----------------------------------------------------------------
time < y.txt
echo ----------------------------------------------------------------

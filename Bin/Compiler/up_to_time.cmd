rem @echo off
rem %1 datum a cas ve formatu MM/DD/YYYY HH:MM

svn up -r {%1} Compiler Lib\Rtl Lib\Artl Tests\Compiler Tests\Rtl Bin\Compiler
svn up -r {%1} Tests\Smpl Lib\Ampl Lib\Smpl Lib\Sys
svn up -r {%1} Tools\Lib\H2Flex Tools\TypeExport Tools\ucd2xml
svn up -r {%1} Lib\TestLib
svn up -r {%1} Samples
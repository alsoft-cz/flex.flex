@echo off
echo.
echo ------------------------------------------------------------------------------
echo -- RELEASE BUILD - DOCUMENTATION                                            --
echo ------------------------------------------------------------------------------
echo.

set path=%PATH%;r:\soft\xml\xsltproc

mkdir release
mkdir release\doc
del /q release\doc\*.*

cd release\doc

echo.
echo ----- Compiling Flex LRM ---------------------------------------------
echo.

echo. | call r:\soft\xml\script\xml2pdf.bat ..\..\..\..\Doc\LRM\flex-4.0-language-reference-manual.xml flex-4.0-language-reference-manual N:\texty\Public\XML\XSL\1.0.3\alsoft-fo-techreport-1.0.3.xsl en delete
if not exist flex-4.0-language-reference-manual.pdf goto error_exit

echo.
echo ----- Compiling modFlex: Getting Started -----------------------------
echo.

echo. | call r:\soft\xml\script\xml2pdf.bat ..\..\..\..\Doc\Manualy\modflex-4.0-getting-started.cz.xml modflex-4.0-getting-started.cz N:\texty\Public\XML\XSL\1.0.3\alsoft-fo-manual-1.0.3.xsl cz delete
if not exist modflex-4.0-getting-started.cz.pdf goto error_exit

echo.
echo ----- Compiling Flex textbook ----------------------------------------
echo.

echo. | call r:\soft\xml\script\xml2pdf.bat ..\..\..\..\Doc\Texty\Ucebnice\flex-4.0-textbook-1.0.xml flex-4.0-textbook-1.0 N:\texty\Public\XML\XSL\1.0.3\alsoft-fo-manual-1.0.3.xsl cz delete
if not exist flex-4.0-textbook-1.0.pdf goto error_exit

goto exit

:error_exit
echo *** There were ERRORS ***

:exit
cd ..\..

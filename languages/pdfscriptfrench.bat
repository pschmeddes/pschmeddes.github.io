::===============================================================
:: This scripts converts a .md (markdown) file to a .pdf
::
::===============================================================
echo off
:: Command line parameter check 
REM IF NOT ERRORLEVEL 1 GOTO Syntax
:: IF "%~1"=="" GOTO Syntax
:: IF "%~2"=="" GOTO Syntax
:: Check sourefile exists
:: set sourcefile=%~1
:: if not exist "%sourcefile%" (
::    echo Cannot find source file %1
::    goto:EOF
::)

:: make build directory
mkdir build
copy french\*.md /a build\French.md /b /y

:: Pandoc conversion
echo converting %~1 to %~2 please wait...
pandoc -s -N ^
 --variable "geometry=margin=1.2in" ^
 --variable mainfont="Rubik" ^
 --variable sansfont="Arial" ^
 --variable monofont="Menlo" ^
 --variable fontsize=12pt ^
 --variable version=2.0 ^
 --include-in-header ../templates/fancyheaders.tex ^
 --toc ^
 -o build/French.pdf french/title.txt build/French.md
echo conversion completed
goto:EOF
:Syntax 
ECHO Convert markdown to pdf 
ECHO Usage: md2pdf [ markdownsourcefile ] [ pdfFileName]


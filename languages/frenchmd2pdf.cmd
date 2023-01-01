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
if not exist build mkdir build
:: combine to one document
copy french\*.md /a build\French.md /b /y
:: Pandoc convert to pdf
echo converting please wait...
pandoc -s -N ^
    --include-in-header chapter_break.tex ^
    --include-in-header inline_code.tex ^
    --highlight-style pygments.theme ^
   -V geometry=margin=2cm ^
   -V mainfont="Source Serif Pro" ^
   -V sansfont="DejaVu Sans" ^
   -V monofont="DejaVu Sans Mono" ^
   -V fontsize=14pt ^
   -V version=2.0 ^
   --include-in-header ../templates/fancyheaders.tex ^
   --toc ^
   --pdf-engine=xelatex ^
   -o build/French.pdf french/title.txt build/French.md
echo conversion completed
goto:EOF
::pandoc build/French.md ^
    -f gfm ^
    --include-in-header chapter_break.tex ^
    --include-in-header inline_code.tex ^
    --highlight-style pygments.theme ^
    -V linkcolor:blue ^
    -V geometry:a4paper ^
    -V geometry:margin=2cm ^
    -V mainfont="DejaVu Serif" ^
    -V monofont="DejaVu Sans Mono" ^
    --pdf-engine=xelatex ^
    -o build/French.pdf french/title.txt 
echo conversion completed
goto:EOF
:Syntax 
ECHO Convert markdown to pdf 
ECHO Usage: md2pdf [ markdownsourcefile ] [ pdfFileName]


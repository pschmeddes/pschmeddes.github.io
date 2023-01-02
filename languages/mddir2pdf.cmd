echo off
::===============================================================
:: This scripts creates a pdf of all md files in the given directory
::
::===============================================================
:: Command line parameter check 
REM IF NOT ERRORLEVEL 1 GOTO Syntax
IF "%~1"=="" GOTO Syntax
IF "%~2"=="" GOTO Syntax
:: Check sourefile exists
set "sourcedir=%~1"
set "outputfile=%~2"
if not exist "%sourcedir%" (
    echo Cannot find source directory %1
    goto Syntax)
:: make sure the build directory exist
if not exist build mkdir build
:: delete previous pdf
if exist outputfile del outputfile
:: prepare copy
set "mdfilter=\*.md"
set "copysource=%sourcedir%%mdfilter%"
copy %copysource% /a build\combinedsource.md /b /y
:: Pandoc convert to pdf
echo converting please wait...
pandoc build\combinedsource.md ^
    -s -N ^
    --toc ^
    --pdf-engine=xelatex ^
    --include-in-header graphix.tex ^
    --include-in-header chapter_break.tex ^
    --include-in-header inline_code.tex ^
    --include-in-header bullet_style.tex ^
    --include-in-header pdf_properties.tex ^
    --include-in-header ../templates/fancyheaders.tex ^
    --highlight-style pygments.theme ^
    --lua-filter current-date.lua ^
    -V toc-title="Table of contents" ^
    -V geometry=margin=2cm ^
    -V mainfont="DejaVu Serif" ^
    -V sansfont="DejaVu Sans" ^
    -V monofont="DejaVu Sans Mono" ^
    -V fontsize=14pt ^
    -V version=2.0 ^
    -o %outputfile%
echo conversion completed
goto:EOF

:Syntax 
ECHO Convert markdown to pdf 
ECHO Usage: md2pdf [ markdownsourcedir ] [ pdfFileName]
::    --include-before-body cover.tex ^
::    --include-in-header graphix.tex ^
::    -o build/frenchlanguageguide.pdf french/title.txt

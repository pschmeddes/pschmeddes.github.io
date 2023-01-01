::===============================================================
:: This scripts creates a pdf of all md files in the french directory
::
::===============================================================
echo off
:: make sure the build directory exist
if not exist build mkdir build
:: delete previous pdf
if exist build/frenc.pdf del build/french.pdf
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
:Syntax 
ECHO Convert markdown to pdf 
ECHO Usage: md2pdf [ markdownsourcefile ] [ pdfFileName]
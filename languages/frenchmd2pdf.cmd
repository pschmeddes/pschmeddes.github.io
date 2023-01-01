::===============================================================
:: This scripts creates a pdf of all md files in the french directory
::
::===============================================================
echo off
:: make sure the build directory exist
if not exist build mkdir build
:: delete previous pdf
if exist build\frenchlanguageguide.pdf del build\frenchlanguageguide.pdf
:: combine to one document
copy french\*.md /a build\french.md /b /y
:: Pandoc convert to pdf
echo converting please wait...
pandoc build/french.md ^
    -s -N ^
    --toc ^
    --include-in-header chapter_break.tex ^
    --include-in-header inline_code.tex ^
    --include-in-header bullet_style.tex ^
    --include-in-header pdf_properties.tex ^
    --highlight-style pygments.theme ^
    -V toc-title='Table of contents' ^
   -V geometry=margin=2cm ^
   -V mainfont="Source Serif Pro" ^
   -V sansfont="DejaVu Sans" ^
   -V monofont="DejaVu Sans Mono" ^
   -V fontsize=14pt ^
   -V version=2.0 ^
   --include-in-header ../templates/fancyheaders.tex ^
   --pdf-engine=xelatex ^
   -o build/frenchlanguageguide.pdf french/title.txt
echo conversion completed
goto:EOF
:Syntax 
ECHO Convert markdown to pdf 
ECHO Usage: md2pdf [ markdownsourcefile ] [ pdfFileName]

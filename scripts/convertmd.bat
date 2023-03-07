@echo off
setlocal

REM Input parameters
set book_folder=%1
set book_name=%2
set book_type=%3

REM Output file name
set output_file=%book_folder%\%book_name%

REM Metadata file and frontmatter file
set metadata_file=%book_folder%\metadata.yml
set frontmatter_file=%book_folder%\front-matter.md

REM List chapter files and output to text file
dir /b /a-d "%book_folder%\chapters\*.md" > %book_folder%\chapters.txt

REM Concatenate frontmatter, chapters, and backmatter
type "%frontmatter_file%" @%book_folder%\chapters.txt > %book_folder%\temp.md
type %book_folder%\temp.md "%book_folder%\back-matter.md" > %book_folder%\book.md

REM Convert book to specified format
if "%book_type%"=="pdf" (
    pandoc --metadata-file=%metadata_file% --toc %book_folder%\book.md -o %output_file%.pdf
) else if "%book_type%"=="html" (
    pandoc --metadata-file=%metadata_file% --toc %book_folder%\book.md -o %output_file%.html
) else if "%book_type%"=="epub" (
    pandoc --metadata-file=%metadata_file% --toc %book_folder%\book.md -o %output_file%.epub
) else (
    echo Invalid book type specified. Please specify pdf, html, or epub.
)

REM Clean up temporary files
del %book_folder%\chapters.txt
del %book_folder%\temp.md
del %book_folder%\book.md

echo Book conversion complete!


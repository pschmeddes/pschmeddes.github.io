@echo off
:: Check if user entered required options
if $%1$==$$ goto usage
if $%2$==$$ goto usage
setlocal disableDelayedExpansion
set "mask=%3"
if $%3$==$$ set "mask=*"
:: Remove quotation marks from pandoc options 
set options=%4
if not $%4$==$$ set options=%options:"=%
set "files="
:: This will only work if the total characters of all the paths and filenames together is less than 8192 characters
for /r %1 %%F in (%mask%) do call set files=%%files%% "%%F"
echo/
echo The following pandoc command will be executed:
echo/ 
echo pandoc -s %files% -o %2 %options%
echo/
:ask
echo Would you like to run pandoc on the files listed above? (Y/N)
set INPUT=
set /P INPUT=?: %=%
if /I "%INPUT%"=="y" goto yes 
if /I "%INPUT%"=="n" goto no
goto ask
:yes
pandoc -s %files% -o %2 --wrap=none %options%
echo Done
goto exit
:no
echo Command was cancelled
goto exit
:usage
echo/
if $%1$==$$ (
    echo This batch file needs to be run from the command line or from PowerShell
    echo/
) 
echo Usage: pancompile DIRECTORY FILENAME [filemask] ["options"]
echo Uses pandoc to compile all documents in specified directory and subdirectories to a single output document
echo/
echo DIRECTORY         the directory/folder to parse recursively (passed to pandoc -s);
echo                   use quotation marks if there are spaces in the directory name
echo FILENAME          the output file (passed to pandoc -o); use quotation marks if spaces
echo filemask          an optional file mask/filter, e.g. *.md; leave blank for all files 
echo "options"         optional list of pandoc commands (must be in quotation marks)
echo/
echo Minimal example: pancompile docs complete_book.docx
echo Typical example: pancompile "My Documents" "Complete Book.docx" *.md "-f markdown -t docx --standalone --toc"
:exit
:: End with a pause so user can read messages
echo/
echo Press any key to exit ...
pause>nul
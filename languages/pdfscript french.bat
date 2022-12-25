mkdir build
copy swedish\*.md /a build\SwedishCombined.md /b /y


pandoc -s -N --variable "geometry=margin=1.2in" --variable mainfont="Palatino" --variable sansfont="Helvetica" --variable monofont="Menlo" --variable fontsize=12pt --variable version=2.0 --include-in-header ../templates/fancyheaders.tex --toc -o build/French.pdf french/title.txt build/French.md
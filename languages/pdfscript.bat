mkdir build
copy swedish\*.md build\SwedishCombined.md /b


pandoc -s -N --variable "geometry=margin=1.2in" --variable mainfont="Palatino" --variable sansfont="Helvetica" --variable monofont="Menlo" --variable fontsize=12pt --variable version=2.0 --include-in-header ../templates/fancyheaders.tex --toc -o build/SwedishReference.pdf swedish/title.txt build/SwedishCombined.md
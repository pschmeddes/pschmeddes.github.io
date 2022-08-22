// pandoc -s -N --variable "geometry=margin=1.2in" --variable mainfont="Palatino" --variable sansfont="Helvetica" --variable monofont="Menlo" --variable fontsize=12pt --variable version=2.0 ../src.title.txt ../src/*.md --include-in-header fancyheaders.tex --toc -o ../build/STIP1OutSystemsDevelopmentStandards.pdf


pandoc -s -N --variable "geometry=margin=1.2in" --variable mainfont="Palatino"  --variable sansfont="Helvetica" --variable monofont="Menlo" --variable fontsize=12pt --variable version=2.0 --toc -o ../build/STIP1OutSystemsDevelopmentStandards.pdf ../src/title.txt ../src/0-contents.md ../src/1-Architecture.md ../src/2-Integrations.md ../src/3-NamingConventions.md ../src/4-ProgrammingStandards.md
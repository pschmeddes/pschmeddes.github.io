// pandoc -s -N --variable "geometry=margin=1.2in" --variable mainfont="Palatino" --variable sansfont="Helvetica" --variable monofont="Menlo" --variable fontsize=12pt --variable version=2.0 ../src.title.txt ../src/*.md --include-in-header fancyheaders.tex --toc -o ../build/STIP1OutSystemsDevelopmentStandards.pdf


pandoc -s -N --variable "geometry=margin=1.2in" --variable mainfont="Palatino"  --variable sansfont="Helvetica" --variable monofont="Menlo" --variable fontsize=12pt --variable version=2.0 --toc -o ../build/STIP1OutSystemsDevelopmentStandards.pdf ../src/title.txt ../src/1-contents.md ../src/2-Architecture.md ../src/3-Integrations.md ../src/4-NamingConventions.md ../src/5-ProgrammingStandards.md ../src/6-LanguagesInSTIP1ERP.md ../src/8-StandardResolutionsForArchitectureDashboardFindings.md

pandoc -N --variable mainfont="Times New Roman" --variable sansfont="Verdana" --variable monofont="Courier New" --variable fontsize=14pt --variable number-sections: false systeemkaart.md --pdf-engine=xelatex -o systeemkaart.pdf
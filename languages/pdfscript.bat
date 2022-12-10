copy swedish\*.md SwedishCombined.md

mkdir build 

pandoc --pdf-engine=xelatex --template=../templates/eisvogel.latex --highlight-style tango --toc -N -o build/swedish.pdf swedish/title.txt SwedishCombined.md
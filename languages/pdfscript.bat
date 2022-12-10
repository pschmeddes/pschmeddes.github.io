mkdir build
copy swedish\*.md build\SwedishCombined.md /b

pandoc --pdf-engine=xelatex --template=../templates/eisvogel.latex --highlight-style tango --toc -N -o build/SwedishReference.pdf swedish/title.txt build/SwedishCombined.md
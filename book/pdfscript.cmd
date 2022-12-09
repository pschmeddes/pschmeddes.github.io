# pandoc version 2.7.3
mkdir build 

pandoc --pdf-engine=xelatex --template=./templates/eisvogel.latex --highlight-style tango --toc -N -o build/output.pdf src/title.txt src/01-intro.md src/02-setup.md
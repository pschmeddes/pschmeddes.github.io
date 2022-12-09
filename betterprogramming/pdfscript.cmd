mkdir build 

pandoc --pdf-engine=xelatex --template=../templates/eisvogel.latex --highlight-style tango --toc -N -o build/output.pdf src/title.txt src/cleancode.md src/finitestatemachine.md src/pragmatic-programmer-tips.md
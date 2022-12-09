mkdir build 

pandoc --pdf-engine=xelatex --template=../templates/eisvogel.latex --highlight-style tango --toc -N -o build/swedish.pdf swedish/title.txt swedish/1-guidebook.md swedish/2-guidebook.md swedish/3-guidebook.md swedish/vocubalary.md
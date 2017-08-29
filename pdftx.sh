#!/bin/sh
# need to run dos2unix after editting
# run pdf latex with bibtex
pdflatex $1.tex &&
bibtex $1 &&
pdflatex $1.tex &&
pdflatex $1.tex &&
cmd /c start SumatraPDF $1.pdf

rm $1.log $1.aux $1.bbl $1.blg $1.ps $1.out $1.dvi

#!/bin/sh
# need to run dos2unix after editting
# run pdf latex with bibtex
pdflatex $1.main.tex &&
bibtex $1.main &&
pdflatex $1.main.tex &&
pdflatex $1.main.tex &&
cmd /c start SumatraPDF $1.main.pdf

rm $1.main.log $1.main.aux $1.main.bbl $1.main.blg $1.main.ps $1.main.out $1.main.dvi
rm $1.Chapter.aux $1.Chapter.log

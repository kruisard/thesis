#!/bin/sh
# need to run dos2unix after editting
# run pdf latex with bibtex
pdflatex $1.main.tex &&
bibtex $1.main &&
pdflatex $1.main.tex &&
pdflatex $1.main.tex &&
cmd /c start SumatraPDF $1.main.pdf

rm *.log *.aux *.bbl *.blg *.ps *.out *.dvi
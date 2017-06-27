#!/bin/sh
# need to run dos2unix after editting
latex $1.tex &&
dvips -Go -ta4 -Ppdf $1.dvi &&
ps2pdf $1.ps
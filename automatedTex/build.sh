#!/bin/bash
# author: Nikolas Schnellbaecher
# contact: khx0@posteo.net
# compile local TeX files
# date: 2018-04-25
# file: buildTex.sh aka paper maker
##########################################################################################

# run pdflatex on the main.tex file
pdflatex main.tex
bibtex main.aux
pdflatex main.tex
pdflatex main.tex
pdflatex main.tex

# tex supplement
pdflatex si.tex
bibtex si.aux
pdflatex si.tex
pdflatex si.tex
pdflatex si.tex

# clean up auxiliary files
rm *.aux *.log  *.out *.toc *.bbl *.blg *.xwm


#!/bin/bash
# author: Nikolas Schnellbaecher
# contact: khx0@posteo.net
# compile local TeX files
# date: 2018-04-25
# file: compileTex.sh aka paper maker
##########################################################################################

# tex main document
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


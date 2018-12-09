#!/bin/bash
##########################################################################################
# author: Nikolas Schnellbaecher
# contact: khx0@posteo.net
# file: build.sh
# date: 2018-12-09
# build local TeX files
##########################################################################################

# run pdflatex on the main.tex file
pdflatex main.tex
bibtex main.aux
pdflatex main.tex
pdflatex main.tex
pdflatex main.tex

# clean up auxiliary files
rm *.aux *.log  *.out *.toc *.bbl *.blg *.xwm
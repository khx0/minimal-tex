#!/bin/bash
# author: Nikolas Schnellbaecher
# contact: khx0@posteo.net
# file: build-Tex_paper_and_SI.sh
# date: 2018-09-16
# build local TeX files
##########################################################################################

# run pdflatex on the main.tex file
pdflatex main.tex
bibtex main.aux
pdflatex main.tex
pdflatex main.tex
pdflatex main.tex

# run pdflatex on the si.tex file (supplementary information)
pdflatex si.tex
bibtex si.aux
pdflatex si.tex
pdflatex si.tex
pdflatex si.tex

# clean up auxiliary files
rm *.aux *.log  *.out *.toc *.bbl *.blg *.xwm


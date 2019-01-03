#!/bin/bash
##########################################################################################
# author: Nikolas Schnellbaecher
# contact: khx0@posteo.net
# file: release-TeX.sh
# date: 2019-01-03
# build and release local TeX document with timestamp
##########################################################################################

# run pdflatex on the main.tex file
pdflatex main.tex
bibtex main.aux
pdflatex main.tex
pdflatex main.tex
pdflatex main.tex

# clean up auxiliary files
rm *.aux *.log  *.out *.toc *.bbl *.blg *.xwm

outname="YOUR_FINAL_NAME_HERE_$(date +%Y-%m-%d).pdf"

echo $outname

mv main.pdf $outname
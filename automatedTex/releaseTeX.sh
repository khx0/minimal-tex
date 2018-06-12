#!/bin/bash
# author: Nikolas Schnellbaecher
# contact: khx0@posteo.net
# compile and release local TeX files
# date: 2018-06-12
##########################################################################################

# run main tex document
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


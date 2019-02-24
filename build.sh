#!/bin/bash

pdflatex thesis.tex
bibtex thesis.aux
makeglossaries thesis
pdflatex thesis.tex
pdflatex thesis.tex
#evince thesis.pdf &

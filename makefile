# MAKEFILE FOR Beam dynamucs paper

# Ultimate target is the pdf
# all: AIMSBeamDynamics.pdf

# Create .pdf from .tex list
# (run pdflatex-bibtex sequence to accomodate references)
AIMSBeamDynamics.pdf: AIMSBeamDynamics.tex
	pdflatex -shell-escape AIMSBeamDynamics
	bibtex AIMSBeamDynamics
	pdflatex -shell-escape AIMSBeamDynamics
	pdflatex -shell-escape AIMSBeamDynamics

$
# Clean up unneccessary dependencies by running "make clean"
.PHONY: clean

clean:
	-rm *.dvi *.log *.toc *.aux *.out *.bbl *.blg *.spl *~
	-rm AIMSBeamDynamics.pdf

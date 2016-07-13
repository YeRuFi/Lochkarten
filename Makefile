TEX_FILES = $(wildcard *.tex)
BIB_FILES = $(wildcard *.bib)
IMG_SRCS = $(wildcard Abbildungen/*.pdf)

all: Lochkartenverarbeitung.pdf

Lochkartenverarbeitung.pdf: $(TEX_FILES) $(BIB_FILES) $(IMG_SRCS) Makefile Ausarbeitung.sty
	pdflatex Lochkartenverarbeitung.tex
	pdflatex Lochkartenverarbeitung.tex
	bibtex Lochkartenverarbeitung
	pdflatex Lochkartenverarbeitung.tex
	pdflatex Lochkartenverarbeitung.tex
clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.toc

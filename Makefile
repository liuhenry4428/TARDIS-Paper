PAPER = report
TEX = $(wildcard *.tex)
BIB = refs.bib
FIGS = $(wildcard figs/*.pdf)

.PHONY: all clean

$(PAPER).pdf: $(TEX) $(BIB) $(FIGS)
	pdflatex $(PAPER)
	bibtex $(PAPER)
	pdflatex $(PAPER)
	pdflatex $(PAPER)

clean:
	rm -f *.aux *.bbl *.blg *.log *.out $(PAPER).pdf


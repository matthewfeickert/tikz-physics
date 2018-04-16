figure_src = $(wildcard */*.tex)
figure_list = $(figure_src:.tex=.pdf)

LATEX = lualatex

default: figures

figures: $(figure_list)

# Target assumes figure source is in same directory as expected figure path
%.pdf: %.tex
	latexmk -$(LATEX) -interaction=nonstopmode -halt-on-error $(basename $@)
	mv $(notdir $(basename $@)).pdf $(basename $@).pdf
	rm $(notdir $(basename $@)).*

clean:
	rm -f *.aux *.bbl *.blg *.dvi *.idx *.lof *.log *.lot *.toc \
		*.glg *.gls *.glo *.xdy *.nav *.out *.snm *.vrb *.mp \
		*.synctex.gz *.brf *.fls *.fdb_latexmk

clean_figures:
	rm -f $(figure_list)

realclean: clean clean_figures
	rm -f *.ps *.pdf

LATEX=lualatex

BASENAME = Xbb_2prong_ISR_recoil

default: figure

figure:
	$(LATEX) $(BASENAME)

clean:
	\rm -f *.aux *.log

realclean: clean
	\rm -f *.pdf

final:
	if [ -f *.aux ]; then make clean; fi
	make figure
	make clean

help:
	@echo ""
	@echo "If you do not have lualatex installed you can still make the figure"
	@echo "using pdflatex (with warnings) with the command:"
	@echo "pdflatex Xbb_ISR_recoil.tex"
	@echo ""

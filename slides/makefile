PDFLATEX=pdflatex -shell-escape -interaction=nonstopmode -halt-on-error

.ONESHELL:

all: pdf/lecture1.pdf pdf/practice1.pdf pdf/lecture2.pdf

pdf/%.pdf: source/%/source.tex source/%/images/*.png
	mkdir -p build/%
	ls build/%/images || ln -sv ../../source/$*/images build/%/images
	cd build/% && $(PDFLATEX) ../../$< && mv source.pdf ../../$@

.PHONY: clean
clean:
	rm -rf *.pdf build/*

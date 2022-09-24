PDFLATEX=pdflatex -shell-escape -interaction=nonstopmode -halt-on-error

.ONESHELL:

all: pdf/lecture1.pdf pdf/practice1.pdf
all: pdf/lecture2.pdf pdf/practice2.pdf
all: pdf/lecture3.pdf pdf/practice3.pdf
all: pdf/homework1.pdf
all: pdf/lecture4.pdf pdf/practice4.pdf

pdf/%.pdf: source/%/source.tex source/%/images/*.png
	mkdir -p build/$(@F)
	ls build/$(@F)/images || ln -sv ../../source/$*/images build/$(@F)/images
	cd build/$(@F) && $(PDFLATEX) ../../$< && $(PDFLATEX) ../../$< && mv source.pdf ../../$@

.PHONY: clean
clean:
	rm -rf *.pdf build/*

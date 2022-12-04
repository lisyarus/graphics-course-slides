PDFLATEX=pdflatex -shell-escape -interaction=nonstopmode -halt-on-error

.ONESHELL:

all: pdf/lecture1.pdf pdf/practice1.pdf
all: pdf/lecture2.pdf pdf/practice2.pdf
all: pdf/lecture3.pdf pdf/practice3.pdf
all: pdf/homework1.pdf
all: pdf/lecture4.pdf pdf/practice4.pdf
all: pdf/lecture5.pdf pdf/practice5.pdf
all: pdf/lecture6.pdf pdf/practice6.pdf
all: pdf/lecture7.pdf pdf/practice7.pdf
all: pdf/homework2.pdf
all: pdf/lecture8.pdf pdf/practice8.pdf
all: pdf/lecture9.pdf pdf/practice9.pdf
all: pdf/lecture10.pdf pdf/practice10.pdf
all: pdf/lecture11.pdf pdf/practice11.pdf
all: pdf/lecture12.pdf pdf/practice12.pdf
all: pdf/lecture13.pdf pdf/practice13.pdf
all: pdf/homework3.pdf
all: pdf/lecture14.pdf

pdf/%.pdf: source/%/source.tex source/%/images/*.png
	mkdir -p build/$(@F)
	ls build/$(@F)/images || ln -sv ../../source/$*/images build/$(@F)/images
	cd build/$(@F) && $(PDFLATEX) ../../$< && $(PDFLATEX) ../../$< && mv source.pdf ../../$@

.PHONY: clean
clean:
	rm -rf *.pdf build/*

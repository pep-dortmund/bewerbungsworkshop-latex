all: build/cover-letter.pdf


build/tmp.pdf: FORCE | build
	latexmk --jobname=tmp cover-letter.tex

build/cover-letter.pdf: build/tmp.pdf build/cv.pdf
	pdftk build/tmp.pdf build/cv.pdf output $@

build/cv.pdf: FORCE | build
	latexmk cv.tex

build:
	mkdir -p build

clean:
	rm -rf build

FORCE:

.PHONY: all clean FORCE

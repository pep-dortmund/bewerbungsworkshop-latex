all: build/cover-letter.pdf


build/cover-letter.pdf: ../cv/build/cv.pdf FORCE | build
	latexmk --jobname=tmp cover-letter.tex
	pdftk build/tmp.pdf $< output $@

build:
	mkdir -p build


../cv/build/cv.pdf: FORCE
	$(MAKE) -C ../cv

clean:
	rm -rf build
	$(MAKE) -C ../cv clean

FORCE:

.PHONY: all clean FORCE

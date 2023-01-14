all: build/cv.pdf


build/cv.pdf: FORCE | build
	latexmk cv.tex

build:
	mkdir -p build

clean:
	rm -rf build

FORCE:

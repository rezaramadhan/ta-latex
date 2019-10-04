all: clean install

install:
	mkdir -p output
	mkdir -p build
	latexmk -pdf -bibtex -outdir=build -cd src/tugas-akhir.tex
	cp build/tugas-akhir.pdf output

clean:
	rm -rf build/*
	find . -iname "*~" -exec rm '{}' ';'

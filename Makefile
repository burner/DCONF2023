all: quick

epss := $(patsubst %.plantuml,%.eps,$(wildcard *.plantuml))

%.eps: %.plantuml
	java -jar plantuml.jar -v -teps $<

quick:
	xelatex presentation.tex

presentation.pdf: presentation.tex $(epss) Makefile
	xelatex presentation.tex
	biber presentation
	xelatex presentation.tex
	xelatex presentation.tex

clean:
	rm presentation.pdf

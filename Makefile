SOURCES = $(wildcard *.tex)
DVIS = $(SOURCES:.tex=.dvi)
PDFS = $(SOURCES:.tex=.pdf)

all: $(PDFS)

%.pdf: %.dvi
	dvipdfmx $^

%.dvi: %.tex
	platex $^


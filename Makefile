SOURCES = $(wildcard *.tex)
DVIS = $(SOURCES:.tex=.dvi)
PDFS = $(SOURCES:.tex=.pdf)

all: $(PDFS)

clean:
	del $(DVIS) $(PDFS)

rebuild: clean
	make

%.pdf: %.dvi
	dvipdfmx $^

%.dvi: %.tex
	platex $^

.PRECIOUS: %.dvi


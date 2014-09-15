main = report

all: once.a

once.%:
	pdflatex $(main)

bibtex: once.a
	bibtex $(main)
	
clean:
	rm -f $(main).{aux,log,toc,out,bbl,blg}

remove: clean
	rm -f $(main).pdf

release: remove bibtex once.b once.c

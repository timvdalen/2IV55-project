main = presentation

all: once.a

once.%:
	pdflatex $(main)
	
clean:
	rm -f $(main).{aux,nav,vrb,log,out,snm,toc}

remove: clean
	rm -f $(main).pdf

release: remove once.b once.c

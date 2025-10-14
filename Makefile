NAME=cv
TEX=${NAME}.tex
STYLE=cv-style.sty
BIB=citations.bib
PDF=${NAME}.pdf

all: ${PDF}

${PDF}: ${TEX} ${STYLE} ${BIB}
	@echo "Compiling ${NAME}.tex with XeLaTeX..."
	latexmk -xelatex ${TEX}

clean:
	@echo "Cleaning auxiliary files..."
	latexmk -c ${TEX}
	rm -f *~ 

distclean: clean
	@echo "Removing PDF..."
	rm -f ${PDF}

rebuild: distclean all

.PHONY: all clean distclean rebuild

all: Der_Auftrag.pdf

OPT=-f markdown+implicit_header_references

Der_Auftrag_solo.epub: Makefile Der_Auftrag_solo.md
	pandoc ${OPT} --epub-cover-image=Bilder/cover.png --epub-stylesheet=style.css -o Der_Auftrag_solo.epub solo.md

Der_Auftrag.pdf: Makefile Der_Auftrag.md
	pandoc ${OPT} -o Der_Auftrag.pdf Der_Auftrag.md

clean:
	rm -f *.epub *.html *.pdf

realclean: clean
	rm -f *~

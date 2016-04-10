all: Der_Auftrag.pdf Der_Auftrag.epub

OPT=-f markdown+implicit_header_references

Der_Auftrag.epub: Makefile text.md
	pandoc ${OPT} --epub-cover-image=Bilder/cover.png --epub-stylesheet=style.css -o Der_Auftrag.epub text.md

Der_Auftrag.pdf: Makefile text.md
	pandoc ${OPT} -o Der_Auftrag.pdf text.md

text.html: Makefile text.md
	pandoc ${OPT} -s -o text.html text.md

clean:
	rm -f *.epub *.html *.pdf

realclean: clean
	rm -f *~

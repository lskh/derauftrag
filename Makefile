all: Der_Auftrag.pdf Der_Auftrag.epub

#OPT="--header_attributes"

Der_Auftrag.epub: Makefile text.md
	pandoc ${OPT} -f markdown+header_attributes -o Der_Auftrag.epub text.md

Der_Auftrag.pdf: Makefile text.md
	pandoc ${OPT} -o Der_Auftrag.pdf text.md

text.html: Makefile text.md
	pandoc ${OPT} -s -o text.html text.md

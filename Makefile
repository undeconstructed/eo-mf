file := "Malranda_frato"

all: clean epub mobi

epub: $(file).epub

mobi: $(file).mobi

check: $(file).epub
	epubcheck $(file).epub

$(file).epub:
	zip -r -n mimetype -X $(file).epub mimetype META-INF EPUB

$(file).mobi: $(file).epub
	kindlegen $(file).epub

clean:
	-rm $(file).epub
	-rm $(file).mobi

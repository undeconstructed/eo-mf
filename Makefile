build: clean
	zip -r -n mimetype mf.epub mimetype META-INF EPUB

clean:
	-rm mf.epub

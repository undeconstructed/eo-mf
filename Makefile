build: clean
	zip -r mf.epub EPUB META-INF mimetype

clean:
	-rm mf.epub

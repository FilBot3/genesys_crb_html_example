.PHONY: html pdf

html:
	pandoc \
		--standalone \
		--toc \
		--metadata title="Genesys Book Test" \
		--css ../css/genesys_book_test.css \
		--output html/genesys_book_test.html \
		content/genesys_book_test.md

pdf:
	pandoc \
		--to html5 \
		--pdf-engine=wkhtmltopdf \
		--pdf-engine-opt '--enable-local-file-access' \
		--pdf-engine-opt '--page-size' \
		--pdf-engine-opt 'A5' \
		--metadata title="Genesys Book Test" \
		--toc \
		--standalone \
		--output pdf/genesys_book_test.pdf \
		--css css/genesys_book_test.css \
		content/genesys_book_test.md

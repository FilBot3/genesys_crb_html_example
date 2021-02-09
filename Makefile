.PHONY: html pdf

html:
	pandoc \
		--standalone \
		--toc \
		--metadata=title="Genesys Book Test" \
		--css=../css/genesys_book_test.css \
		--output=html/genesys_book_test.html \
		content/genesys_book_test.md

pdf: html
	wkhtmltopdf \
		--margin-top 0 \
		--margin-bottom 0 \
		--margin-left 0 \
		--margin-right 0 \
		--page-size A6 \
		--title "Genesys Book Test" \
		--outline \
		--outline-depth 6 \
		--background \
		--images \
		--enable-internal-links \
		--enable-local-file-access \
		--print-media-type \
		--enable-toc-back-links \
		--encoding UTF-8 \
		--footer-center "[title]" \
		cover html/cover_page.html \
		page \
		html/genesys_book_test.html \
		pdf/genesys_book_test.pdf


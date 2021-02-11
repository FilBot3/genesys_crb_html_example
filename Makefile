.PHONY: html pdf

html:
	pandoc \
		--standalone \
		--toc \
		--metadata=title="Genesys Book Test" \
		--css=../css/genesys_book_test.css \
		--output=html/genesys_book_test.html \
		content/genesys_book_test.md

wkhtmltopdf: html
	# https://wkhtmltopdf.org/
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
		--footer-html html/footer.html \
		html/cover_page.html \
		html/genesys_book_test.html \
		pdf/genesys_book_wkhtmltopdf_test.pdf

prince: html
	# https://www.princexml.com
	prince \
		html/genesys_book_test.html \
		--output=pdf/genesys_book_prince_test.pdf \
		--media=print \
		--page-size=A6 \
		--page-margin=1mm

weasyprint:
	# **PREFERED**
	# https://weasyprint.org/
	# https://weasyprint.readthedocs.io
	bash scripts/weasyprint.sh

.PHONY: html pdf

html:
	pandoc \
		--standalone \
		--toc \
		--metadata title="Genesys Book Test" \
		--css ../css/genesys_book_test.css \
		--output html/genesys_book_test.html \
		content/genesys_book_test.md



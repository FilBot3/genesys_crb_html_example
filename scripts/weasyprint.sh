#!/usr/bin/env bash

set -e
set -x

weasyprint \
  html/genesys_book_test.html \
  pdf/genesys_book_weasyprint_test.pdf \
  --format pdf \
  --stylesheet <(echo "@page { size: 105mm 148mm; margin: 1mm; }")

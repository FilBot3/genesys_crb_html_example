#!/usr/bin/env bash

gs \
  -sDEVICE=pdfwrite \
  -dCompatibilityLevel=1.5 \
  -dPDFSETTINGS=/default \
  -dNOPAUSE \
  -dQUIET \
  -dBATCH \
  -dDetectDuplicateImages \
  -dCompressFonts=true \
  -r150 \
  -sOutputFile=pdf/output.pdf \
  pdf/genesys_book_prince_test.pdf \
  pdf/genesys_book_weasyprint_test.pdf \
  pdf/genesys_book_wkhtmltopdf_test.pdf

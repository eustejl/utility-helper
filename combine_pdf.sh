#!/bin/bash

#__author__ = 'John Lawrence Euste'

# define the individual pdf files
# there could be more than 2 files
pdf1=pdf1.pdf # !
pdf2=pdf2.pdf # !


# define the output PDF file
output_pdf=FilenameOfPDF.pdf  # !

pdfunite $pdf1 $pdf2 $output_pdf # !

exit

# =============================================================================
# This combines two or more pdf files (here as given in the variables pdf1 and
#  pdf2) into one pdf file named as given in output_pdf. This code uses
#  pdfunit which is based on Poppler. Make sure to install it first on your
#  device by:
#   sudo apt install poppler-utils
# =============================================================================

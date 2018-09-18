#!/bin/sh

wkhtmltopdf --header-html header.html content.html /output/output.pdf
wkhtmltopdf content.html /output/output-no-header.pdf

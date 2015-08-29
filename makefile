OUTPUT_NAME = example
MAIN_NAME = main

all: text

text: $(OUTPUT_NAME).pdf

$(OUTPUT_NAME).pdf: $(MAIN_NAME).pdf
	cp $(MAIN_NAME).pdf $(OUTPUT_NAME).pdf

$(MAIN_NAME).pdf: individuals $(MAIN_NAME).tex
	latexmk -pdf -pdflatex="pdflatex -shell-escape -halt-on-error -enable-pipes -enable-write18" $(MAIN_NAME).tex

individuals: *.tex

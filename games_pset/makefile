# makefile: Rnw -> tex -> pdf
# v 3.0
# .Rnw extension is automatically added
file_name = games_pset_united

all: $(file_name).pdf

$(file_name).pdf: $(file_name).tex
	# protection against biber error
	# http://tex.stackexchange.com/questions/140814/
	rm -rf `biber --cache`

	# create pdf
	# will automatically run pdflatex/biber if necessary
	latexmk -pdf $(file_name).tex

	# clean auxillary files
	latexmk -c $(file_name).tex

# $(file_name).tex : $(file_name).Rnw
# 	Rscript -e "library(knitr); knit('$(file_name).Rnw')"

clean:
	-rm $(file_name).pdf
	# rm $(file_name).tex

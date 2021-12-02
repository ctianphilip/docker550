# rule for making report  
airfare_info550: data/airfare_info550.csv rmd/rmarkdown_chen.Rmd
	cd rmd; Rscript -e "rmarkdown::render('rmarkdown_chen.Rmd', output_file = '../output/airfare_info550.html')"
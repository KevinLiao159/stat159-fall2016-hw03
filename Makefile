dataset = data/Advertising.csv

#declare phony targets
.PHONY: all data clean eda regression report tests session-info

all: eda regression report session-info

#import data into the data folder
data:
	curl "http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv" > $(dataset)

#Run Rscript to test the regression script
tests: code/test-that.R
	cd code && Rscript test-that.R
	

#Run eda-script to generate images and summary statistics
eda: code/scripts/eda-script.R $(dataset)
	cd code/scripts && Rscript eda-script.R
	

#Run multiple regression 
regression: 
	cd code/scripts && Rscript regression-script.R
	

#Save session info information
session-info: code/scripts/session-info-script.R
	cd code/scripts && Rscript session-info-script.R
	
	
#Generate pdf report
report: report/report.Rmd
	cd report && Rscript -e 'library(rmarkdown); render("report.Rmd","pdf_document")'
	

#clean the target
clean:
	rm -f report/report.pdf 

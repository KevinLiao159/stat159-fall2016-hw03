dataset = data/Advertising.csv

#declare phony targets
.PHONY: all data clean eda regression report tests session-info

all: eda regression report session-info

#import data into the data folder
data:
	curl "http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv" > $(dataset)

#Run Rscript to test the regression script
tests: code/test-that.R
	Rscript code/test-that.R

#Run eda-script to generate images and summary statistics
eda: code/scripts/eda-script.R $(dataset)
	Rscript code/scripts/eda-script.R

#Run multiple regression 
regression: 
	Rscript code/scripts/regression-script.R

#Save session info information
session-info: code/scripts/session-info-script.R
	Rscript code/scripts/session-info-script.R
	
#Generate pdf report
report: report/report.Rmd
	Rscript -e 'library(rmarkdown); render("report/report.Rmd")'

#clean the target
clean:
	rm -f report/report.pdf 

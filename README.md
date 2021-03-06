---
title: "HW03 - Multiple Regression Analysis"
subtitle: "Stat 159, Fall 2016, Prof. Sanchez"
author: "Kevin Liao"
output: pdf_document
fontsize: 12pt
urlcolor: blue
---
## Multiple Regression Analysis

The purpose of this assignment is to extend the scope of the previous HW. 
In addition to keep applying regression analysis in R---using `lm()`---you 
will also write some functions as well as their unit tests.

I will be reproducing the analysis from Section 3.2
(pages 71 to 82), from the book "An Introduction to Statistical Learning" 
(by James et al):

[http://www-bcf.usc.edu/~gareth/ISL/](http://www-bcf.usc.edu/~gareth/ISL/)

The data set is in the `Advertising.csv` file available here:

[http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv](http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv)

The main analysis involves carrying out a __multiple linear regression__ with 
predictor variables `TV`, `Radio`, `Newspaper`, and the response variable
`Sales`. The ultimate output will be a report replicating the following 
results from Chapter 3

## File Structure

The complete file-structure for this assignment is the following:

```
stat159-fall2016-hw03/
	.gitignore
	README.md
	LICENSE
	Makefile
	session-info.txt                     # produced by session-info-script.R
	code/
	  README.md
	  test-that.R
	  functions/
	    regression-functions.R
	  scripts/
	    eda-script.R
	    regression-script.R
	    session-info-script.R
	  tests/
	    test-regression.R
	data/
	  README.md
	  Advertising.csv
	  eda-output.txt                      # produced by eda-script.R
	  correlation-matrix.RData            # produced by eda-script.R
	  regression.RData                    # produced by regression-script.R
	images/
		histogram-sales.png                # produced by eda-script.R
		histogram-tv.png                   # produced by eda-script.R
		histogram-radio.png                # produced by eda-script.R
		histogram-newspaper.png            # produced by eda-script.R
		scatterplot-matrix.png             # produced by eda-script.R
		scatterplot-tv-sales.png           # produced by regression-script.R
		scatterplot-radio-sales.png        # produced by regression-script.R
		scatterplot-newspaper-sales.png    # produced by regression-script.R
		residual-plot.png                  # produced by regression-script.R
		scale-location-plot.png            # produced by regression-script.R
		normal-qq-plot.png                 # produced by regression-script.R
	report/
		report.Rmd
		report.pdf
```


## Files

- Code scripts:
  + `eda-script.R` reads data and does analysis
  + `regression-script.R` reads data and computes regression analytics
  + `session-info-script.R` displayes library we used
  
- Data Files:
  + `Advertising.csv` is source data
  + `eda-output.txt` contains summary stats
  + `correlation-matrix.RData` contains matrix of correlations of variables
  + `regression.RData` contains regression object

- Image files:
  + histograms of all the variables, produced from `eda-script.R`.
  + scatterplot-matrix of all variables (pairwise) produced from `eda-script.R`.
  + scatterplots for all individual simple regressions, with the corresponding
    fitted regression line. 
  + Plot of residuals against fitted values (from the multiple regression).
  + Scale-Location plot of $\sqrt{|residuals|}$ against fitted values 
  + Normal Q-Q plot (from the multiple regression).
  + The last three plots can be obtained with `plot.lm()`, and they will
    also be an output of `regression-script.R`.  

- Report files:
  + `report.Rmd` sources the functions in `regression-functions.R`, reads in 
    the objects of `correlation-matrix.RData` and `regression.RData`, and
    produces the tables and regression indices.
  + `report.pdf` is the generated pdf file from the Rmd document.
  
- Licenses:
  + This project involves producing software content (R code), as well as 
    media content (narrative, and images). 

- README files:
  + It's a brief description of what the project is about, another
    description of the file structure, instructions for a "competent" user
    on how to recreate your analysis and report, information about the licenses
    
- `.gitignore` file:
  + use this file to include files that you don't want Git to track in your 
    project.
    
- Session Information:
  + The text file `session-info.txt` will be at the top level of the project.
    This file is generated by `session-info-script.R`

### How to reproduce the project
If you want to reproduce the results represented in this project (images, dataset, report etc), one simply clone the repository (download zip file) and run the make file with command
> make

If you would like to reproduce a specific part of the project (e.g. report), run the corresponding command line in the terminal
> make report

If you would like to remove the report, run the following command line
> make clean

the following is a complete list of make commands for phony targets:
* make all 
* make data 
* make tests 
* make eda 
* make regression
* make report 
* make session-info
* make clean

### REFERENCES
James, Gareth, Daniela Witten, Trevor Hastie, and Robert Tibshirani. An Introduction to Statistical Learning: With Applications in R. New York: Springer, 2013. Print.

### License additonal info 
All media content (e.g. report/report, and images) licensed under Creative Commons Attribution-ShareAlike 4.0 International License.

All code licensed under Apache License 2.0
  
## license for the media content

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.

Author: **Kevin Liao**
---
title: "HW03 - Multiple Regression Analysis"
subtitle: "Stat 159, Fall 2016, Prof. Sanchez"
author: "Kevin Liao"
output: pdf_document
fontsize: 12pt
urlcolor: blue
---


- Code scripts:
  + `eda-script.R` reads in the `Advertising.csv` data set, and computes 
    summary statistics, histograms for all the variables (`TV`, `Radio`,
    `Newspaper`, and `Sales`), matrix of correlations among all variables,
    and scatterplot-matrix (pairwise scatterplots). 
    The summary statistics (clearly labeled) and the matrix of correlations, 
    will be saved in a file `eda-output.txt`. In addition to including the 
    correlation matrix in `eda-output.txt`, save it also in binary format
    `correlation-matrix.RData`. In turn, each exploratory chart is saved in 
    PNG format.
  + `regression-script.R` reads in the `Advertising.csv` data set, and computes
    a `"regression"` object---via `lm()`---as well as the summary of such 
    regression object---via `summary()`. These objects are saved in the file
    `regression.RData`. This script also produces the three diagnostics 
    plots `residual-plot.png`, `scale-location-plot.png`, and 
    `normal-qq-plot.png` (see `help(plot.lm)` for more info).
  + `session-info-script.R` is a script that includes `library()` calls to 
    ALL the packages that you use for your project, as well as the output of
    the function `sessionInfo()`. Export the output via `sink()` to the file 
    `session-info.txt` (this file is at the  project's top level directory). 
    
    
## license

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.

Author: **Kevin Liao**    
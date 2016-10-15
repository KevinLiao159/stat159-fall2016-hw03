# Script to be called from command line to perform unit tests:
# Rscript test-that.R
# Setting working directory
setwd("~/Documents/stat159/stat159-fall2016-hw03")

library(testthat)

# loading all function files
files <- list.files("code/functions")
for (i in 1:length(files)) {
  source(paste0("code/functions/", files[i]))
}

# run unit tests in folder 'tests/'
test_dir("code/tests", reporter = "Summary")
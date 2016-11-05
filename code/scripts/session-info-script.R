# Output session-info-script.txt
sink(file = "../../session-info.txt")
# To avoid unnecessary warnings on the terminal
options(warn = -1)
library(ggplot2)
'ggplot'
library(testthat)
'testthat'
library(rmarkdown)
'rmarkdown'
library(xtable)
'xtable'
library(stats)
'stats'
library(graphics)
'graphics'
library(grDevices)
'grDevices'
library(utils)
'utils'
library(datasets)
'datasets'
library(methods)
'methods'
library(base)
'base'
sessionInfo()
sink()
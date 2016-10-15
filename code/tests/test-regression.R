library(testthat)
# Setting working directory
setwd("~/Documents/stat159/stat159-fall2016-hw03")

source("code/functions/regression-functions.R")

context("Test for regression functions")

test_that("residual_sum_squares() works as expected", {
  model <- lm(mpg ~ cyl + wt, data = mtcars)
  expect_type(residual_sum_squares(model), 'double')
  expect_gte(residual_sum_squares(model), 0)
  expect_length(residual_sum_squares(model), 1)
  expect_equal(residual_sum_squares(model), sum(model$residuals^2))
})


test_that("total_sum_squares() works as expected", {
  model <- lm(mpg ~ cyl + wt, data = mtcars)
  expect_type(total_sum_squares(model), 'double')
  expect_length(total_sum_squares(model), 1)
  expect_equal(total_sum_squares(model), sum((mtcars$mpg - mean(mtcars$mpg))^2))
})

test_that("r_squared() works as expected", {
  model <- lm(mpg ~ cyl + wt, data = mtcars)
  model_summary <- summary(model)
  expect_gte(r_squared(model), 0)
  expect_length(r_squared(model), 1)
  expect_type(r_squared(model), 'double')
  expect_equal(r_squared(model), model_summary$r.squared)
})

test_that("f_statistic() works as expected", {
  model <- lm(mpg ~ cyl + wt, data = mtcars)
  model_summary <- summary(model)
  expect_length(f_statistic(model),1)
  expect_type(f_statistic(model), 'double')
  expect_equal(f_statistic(model), as.numeric(model_summary$fstatistic[1]))
})

test_that("residual_std_error() works as expected", {
  model <- lm(mpg ~ cyl + wt, data = mtcars)
  model_summary <- summary(model)
  expect_gte(residual_std_error(model), 0)
  expect_length(residual_std_error(model), 1)
  expect_type(residual_std_error(model), 'double')
  expect_equal(residual_std_error(model), model_summary$sigma)
})
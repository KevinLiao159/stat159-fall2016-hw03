# The following functions are referred from "An Introduction to Statistical Learning"

# Compute Residual sum of squares (p.69)
# Expect input is lm object, return output is RSS 
residual_sum_squares <- function(lm) {
  rss = sum(lm$residuals^2)
  return(rss)
}

# Compute total sum of squares (p.70)
# Expect input is lm object, return output is TSS
total_sum_squares <- function(lm) {
  tss = sum((unlist(lm$model[1]) - mean(unlist(lm$model[1])))^2) 
  return(tss)
}

# Compute R-squared (p.70)
# Expect input is lm object, return output is rsq
r_squared <- function(lm) {
  rss = residual_sum_squares(lm)
  tss = total_sum_squares(lm)
  rsq = 1- (rss/tss)
  return(rsq)
}

# Compute f-statistics (p.75)
# Expect input is lm object, return output is f 
f_statistic <- function(lm) {
  tss = total_sum_squares(lm)
  rss = residual_sum_squares(lm)
  p = length(coefficients(lm)) - 1
  n = length(summary(lm)$residuals)
  num = (tss -rss)/p
  den = rss / (n-p-1)
  f = num/den
  return(f)
}

# Compute residual standard error (p.80)
# Expect input is lm object, return output is RSE
residual_std_error <- function(lm) {
  rss = residual_sum_squares(lm)
  p = length(coefficients(lm)) - 1
  n = length(summary(lm)$residuals)
  rse = sqrt(rss / (n-p-1))
  return(rse)
}


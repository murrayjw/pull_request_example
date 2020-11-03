

# function to calculate the inverse logit ---------------------------------

inverse_logit <- function(x) {
  
  return_value <- 1 /(1 + exp(-x))
  return(return_value)
}

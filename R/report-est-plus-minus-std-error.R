#' @title Reporting formatted estimates and standard errors
#' 
#' @description This function will takes a model object as an input and returns
#' estimate and standard error as a formatted string
#' 
#' @param model the model of interest
#' 
#' @param rounding how many decimals one wants to round values to
#' 
#' @param tidy_data Boolean indicating whether the model was been tidyed with 
#' broom::tidy()
#' 
#' @return A formatted vector

report_est_and_std_error <- function(model, rounding, tidy_data = T) {
  if (tidy_data == T) {
    estimate <- model$Estimate %>% round(rounding)
    std_error <- model$`Std. Error` %>% round(rounding)
    return(stringr::str_c(estimate, " ± ", std_error))
  }
  else {
    estimate <- model$estimate %>% round(rounding)
    std_error <- model$SE %>% round(rounding)
    return(stringr::str_c(estimate, " ± ", std_error))
  }
}
report_est_and_std_error <- function(tidy_model, rounding){
  estimate <- tidy_model$Estimate %>% round(rounding)
  std_error <- tidy_model$`Std. Error` %>% round(rounding)
  stringr::str_c(estimate," ± ",std_error)
}
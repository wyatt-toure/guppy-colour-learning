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
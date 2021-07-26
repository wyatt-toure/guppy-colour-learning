#' @title Reporting formatted estimates and standard errors
#' 
#' @description This function will takes a table (presumably one with confidence 
#' intervals) and format it in the manner '95% CI [LCL, UCL]'
#' 
#' @param table the table of interest
#' 
#' @param rounding how many decimals one wants to round values to
#' 
#' @return A formatted vector

report_ci <- function(table, rounding){
  lower.cl <- table$lower.CL %>% round(rounding)
  upper.cl <- table$upper.CL %>% round(rounding)
  stringr::str_c("95% CI ","[",lower.cl,", ",upper.cl,"]")
}
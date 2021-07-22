report_ci <- function(table, rounding){
  lower.cl <- table$lower.CL %>% round(rounding)
  upper.cl <- table$upper.CL %>% round(rounding)
  stringr::str_c("95% CI ","[",lower.cl,", ",upper.cl,"]")
}
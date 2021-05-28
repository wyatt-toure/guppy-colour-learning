#' @title Formatting Ethovision data sheets
#' 
#' @description This function will format raw EthoVision data outputs 
#' for our colour learning experiment.
#' 
#' @param raw_data the read in .xlsx data sheet 
#' 
#' @param trial.type the trial type to be added to the formatted data sheet, 
#' should be either "test" or "training"
#' 
#' @return A formatted data frame

format_ethovision_data <- function(raw_data) {
  formatted_data <- dplyr::rename(raw_data,
    "result" = 1,
    "run" = 2,
    "id" = 3,
    "object.side" = 4,
    "trial" = 5,
    "distance.moved" = 6,
    "mean.velocity" = 7,
    "periphery.visits" = 8,
    "time.in.periphery" = 9,
    "latency.to.periphery" = 10,
    "center.visits" = 11,
    "time.in.center" = 12,
    "latency.to.center" = 13,
    "left.object.visits" = 14,
    "left.object.time" = 15,
    "left.object.latency" = 16,
    "right.object.visits" = 17,
    "right.object.time" = 18,
    "right.object.latency" = 19,
  ) %>%
    dplyr::slice(4:nrow(raw_data)) %>%
    dplyr::select(3:ncol(raw_data))
}




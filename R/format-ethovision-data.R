#' @title Formatting Ethovision data sheets
#' 
#' @description This function will format raw EthoVision data outputs 
#' for our colour learning experiment. It renames columns based on their 
#' position and remove the non-data rows and columns produced during export
#' 
#' @param raw_data the .xlsx data sheet
#' 
#' @return A formatted data frame

format_ethovision_data <- function(raw_data) {
  formatted_data <- dplyr::rename(raw_data,
    "result" = 1,
    "run" = 2,
    "ate" = 3,
    "id" = 4,
    "object.pair" = 5,
    "object.side" = 6,
    "trial" = 7,
    "distance.moved" = 8,
    "mean.velocity" = 9,
    "periphery.visits" = 10,
    "time.in.periphery" = 11,
    "latency.to.periphery" = 12,
    "center.visits" = 13,
    "time.in.center" = 14,
    "latency.to.center" = 15,
    "left.object.visits" = 16,
    "time.with.left.object" = 17,
    "left.object.latency" = 18,
    "right.object.visits" = 19,
    "time.with.right.object" = 20,
    "right.object.latency" = 21,
  ) %>%
    dplyr::slice(4:nrow(raw_data)) %>%
    dplyr::select(3:ncol(raw_data))
}




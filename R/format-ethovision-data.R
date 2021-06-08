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
    "object.side" = 5,
    "trial" = 6,
    "distance.moved" = 7,
    "mean.velocity" = 8,
    "periphery.visits" = 9,
    "time.in.periphery" = 10,
    "latency.to.periphery" = 11,
    "center.visits" = 12,
    "time.in.center" = 13,
    "latency.to.center" = 14,
    "left.object.visits" = 15,
    "time.with.left.object" = 16,
    "left.object.latency" = 17,
    "right.object.visits" = 18,
    "time.with.right.object" = 19,
    "right.object.latency" = 20,
  ) %>%
    dplyr::slice(4:nrow(raw_data)) %>%
    dplyr::select(3:ncol(raw_data))
}




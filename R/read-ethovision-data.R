#' @title Batch processing raw EthoVision file directory
#'
#' @description This function takes a directory of raw, EthoVision exported,
#' .xlsx files and returns them in one data frame appended together. Requires the
#' format_ethovision_data() function.
#'
#' @param raw_data_path the path to the directory containing raw data files
#'
#' @return A composite formatted data set

source("R/format-ethovision-data.R")

read_and_format_ethovision_data <- function(raw_data_path) {
  # Get list of full file paths to raw data sheets
  file_list <- list.files(raw_data_path, full.names = TRUE)
  
  # Initialize empty data frame
  dataset <- data.frame()

  # Loop which reads each data file, 
  # formats each data file, and
  # attaches it to the bottom of the master data sheet `dataset`
  for (i in 1:length(file_list)) {
    temp_data <- readxl::read_excel(file_list[i])
    formatted_temp_data <- format_ethovision_data(temp_data)
    dataset <- rbind(dataset, formatted_temp_data)
  }
  
  # Explicit call to return the full data sheet necssary due to the loop
  return(dataset)
}

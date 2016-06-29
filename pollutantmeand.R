pollutantmean <- function(directory, pollutant, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating the location of
  ## the CSV files
  
  ## 'pollutant' is a character vector of length 1 indicating the name of the
  ## pollutant for which we will calculate the mean; either 'sulfate' or
  ## 'nitrate'.
  
  ## 'id' is an integer vector indicating the monitor ID numbers to be used
  
  ## create empty data vector
  data = c()
  ## read csv for each id provided
  for (i in id) {
    
    csv_file = read.csv(paste(directory, "/", formatC(i, width = 3, flag = "0"), 
                             ".csv", sep = ""))
    
    data = c(data, csv_file[[pollutant]])
  }
  ## Return the mean of the pollutant across all ids (ignoring NA values)
  return(mean(data, na.rm = TRUE))
}
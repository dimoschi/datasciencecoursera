complete <- function(directory, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating the location of
  ## the CSV files
  
  ## 'id' is an integer vector indicating the monitor ID numbers to be used
  
  ## Return a data frame of the form of a two collumn matrix, where first collumn 'id' is
  ## the monitor ID number and second collumn 'complete' is the number of complete cases
  
  ## create empty complete vector
  complete = c()
  ## read csv for each id provided
  for (i in id) {
    
    csv_file = read.csv(paste(directory, "/", formatC(i, width = 3, flag = "0"), 
                             ".csv", sep = ""))
    complete = c(complete, sum(complete.cases(csv_file)))
  }
  return(data.frame(id, complete))
}
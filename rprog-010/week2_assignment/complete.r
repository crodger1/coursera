complete <- function(directory, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  list_files<-list.files(directory,full.names=TRUE)
  dat<-data.frame()
  comp<-data.frame()
  
  for(i in 1:5) {
    dat<-rbind(dat, read.csv(list_files[i]))
  }
  
  ## length(list_files)
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  
  
  
  ## Return a data frame of the form:
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## where 'id' is the monitor ID number and 'nobs' is the
  ## number of complete cases
  
  #for (i in 1:3) {
  #  y<-complete.cases(dat["ID"==i,])
  #}
  complete.cases(dat["ID" %in% 1:21,])
}


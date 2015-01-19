pollutantmean <- function(directory, pollutant, id = 1:332) {

  list_files<-list.files(directory,full.names=TRUE)
  dat<-data.frame()

  for(i in length(list_files)) {
    dat<-rbind(dat, read.csv(list_files[i]))
  }
    
  dat_subset <- dat[dat$ID %in% c(10,13),]
  #dat_subset <- dat[which(dat[,4] %in% id), ]
  head(dat_subset)
  #mean(dat_subset[,pollutant], na.rm=TRUE)
  
}


pollutantmean <- function(directory, pollutant, id = 1:332) {

  list_files<-list.files(directory,full.names=TRUE)
  dat<-data.frame()

  for(i in 1:length(list_files)) {
    dat<-rbind(dat, read.csv(list_files[i]))
  }
  #View(dat)
  dat_subset <- dat[dat$ID %in% id,pollutant]
  #dat_subset <- dat[which(dat[,4] %in% id), ]
  mean(dat_subset,na.rm=TRUE)
  #mean(dat_subset[,pollutant], na.rm=TRUE)
  
}


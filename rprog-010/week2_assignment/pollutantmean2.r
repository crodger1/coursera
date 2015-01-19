pollutantmean <- function(directory, pollutant, id = 1:332) {

  list_files<-list.files(directory,full.names=TRUE)
  dfa<-data.frame()

  for(i in 1:length(list_files)) {
    dfa<-rbind(dfa,read.csv(list_files[i]))
  }
  mean(dfa$pollutant, na.rm = removeNA)
  
}
  



pollutantmean("specdata","nitrate",3:10)


complete <- function(directory, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  list_files<-list.files(directory,full.names=TRUE)
  dat<-data.frame()
  comp<-data.frame()
  
#   for(i in 1:length(list_files)) {
#     dat<-rbind(dat, read.csv(list_files[i]))
#   }
  
  

  dfa<-data.frame()
  
  for(i in id) {
    x <- paste(directory,"/",formatC(i,width=3,format="d",flag="0"),".csv",sep="")
    df2 <- read.csv(x)
    dfa<-rbind(dfa,df2)
  }


  dat<-dfa

  for(j in id) {
    id<-c(j)
    nobs<-c( nrow(na.omit(dat[dat$ID == j , ])))
    
    comp<-rbind(comp,data.frame(id,nobs))
    
    #comp<-rbind(comp,data.frame(c(j), c(nrow(na.omit(dat[dat$ID == id , ])))))
  }
  
  comp
  
}


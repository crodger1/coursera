corr <- function(directory, threshold = 0) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'threshold' is a numeric vector of length 1 indicating the
  ## number of completely observed observations (on all
  ## variables) required to compute the correlation between
  ## nitrate and sulfate; the default is 0
  
  ## Return a numeric vector of correlations
  
  
  list_files<-list.files(directory,full.names=TRUE)
  dfa<-data.frame()
  corrs<-numeric()
  
  
  
  for(i in 1:332) {
    x <- paste(directory,"/",formatC(i,width=3,format="d",flag="0"),".csv",sep="")
    dfa <- read.csv(x)
    
    if ( nrow(na.omit(dfa[dfa$ID == i , ])) > threshold ) {
      
      dfa_sub<-dfa[dfa$ID == i , ]
      
      corrs<-c( corrs, cor(dfa_sub$sulfate,dfa_sub$nitrate,use="complete.obs") )
    }
    
  }

  
  corrs
  
#   
#   for(j in 1:10) {
#     if (nrow(dfa[dfa$ID == j , ]) >= threshold) {
#       y<-"yes"
#     }
#   }
#   y


#   
#   for(j in id) {
#     id<-c(j)
#     nobs<-c( nrow(na.omit(dat[dat$ID == j , ])))
#     
#     comp<-rbind(comp,data.frame(id,nobs))
#     
    #comp<-rbind(comp,data.frame(c(j), c(nrow(na.omit(dat[dat$ID == id , ])))))

}

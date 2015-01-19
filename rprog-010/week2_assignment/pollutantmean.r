pollutantmean <- function(directory, pollutant, id = 1:332) {

  y <- paste(directory,"/",formatC(id[1],width=3,format="d",flag="0"),".csv",sep="")
  dfa <- read.csv(y)
  ##head(data)
  
  for(i in id[-1]) {
    x <- paste(directory,"/",formatC(i,width=3,format="d",flag="0"),".csv",sep="")
    df2 <- read.csv(x)
    ##head(df2)
    dfa<-rbind(dfa,df2)
  }
  
  
}
  



pollutantmean("specdata","nitrate",3:10)


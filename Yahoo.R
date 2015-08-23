library(Touchdown)
setwd("C:/users/ryan/dropbox/rprojects/yahoo")

Passing2014<- lapply(1:16,function(x) GetStats("Passing",2014,x))
Rushing2014<- lapply(1:16,function(x) GetStats("Rushing",2014,x))
Kicking2014<- lapply(1:16,function(x) GetStats("Receiving",2014,x))
Returns2014<- lapply(1:16,function(x) GetStats("Returns",2014,x))
Punting2014<- lapply(1:16,function(x) GetStats("Punting",2014,x))
Defense2014<- lapply(1:16,function(x) GetStats("Defense",2014,x))

save(Passing2014,file="StatsData.Rmd")




base<- "http://sports.yahoo.com/nfl/stats/bycategory?"
category<-"Passing"
year<- 2014
week<- 16
URI<- paste(base,
            paste("cat",unlist(category),sep="="),
            "conference=NFL",
            paste("year=season_",year,sep=""),
            paste("timeframe=Week",week,sep=""),
            sep="&")
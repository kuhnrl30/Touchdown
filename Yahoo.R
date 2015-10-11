library(Touchdown)
setwd("C:/users/ryan/dropbox/rprojects/yahoo")

#Setup passing data
Passing2014<- GetStats("Passing",2014,1:16)
Passing2014$Year<- "2014"
Passing2013<- GetStats("Passing",2013,1:16)
Passing2013$Year<-"2013"
Passing2012<- GetStats("Passing",2012,1:16)
Passing2012$Year<- "2012"
Passing<- rbind(Passing2012,Passing2013,Passing2014)
save(Passing,file="C:/users/ryan/dropbox/rpackages/touchdown/data/Passing.rda")
rm(Passing2014,Passing2013,Passing2012)
#Complete


Rushing2014<- GetStats("Rushing",2014,1:16)
Rushing2014$Year<- "2014"
Rushing2013<- GetStats("Rushing",2013,1:16)
Rushing2013$Year<- "2013"
Rushing2012<- GetStats("Rushing",2012,1:16)
Rushing2012$Year<- "2012"
Rushing<- rbind(Rushing2012, Rushing2013,Rushing2014)
save(Rushing,file="C:/users/ryan/dropbox/rpackages/touchdown/data/Rushing.rda")
rm(Rushing2014,Rushing2013,Rushing2012)
#complete

Kicking2014<-GetStats("Kicking",2014,1:16)
Kicking2013<-GetStats("Kicking",2013,1:16)
Kicking2012<-GetStats("Kicking",2012,1:16)
Kicking2014$Year<- "2014"
Kicking2013$Year<- "2013"
Kicking2012$Year<- "2012"
Kicking<- rbind(Kicking2014,Kicking2013,Kicking2012)
save(Kicking,file="C:/users/ryan/dropbox/rpackages/touchdown/data/Kicking.rda")
rm(Kicking2014,Kicking2013,Kicking2012)

Returns2014<- GetStats("Returns",2014,1:16)
Returns2013<- GetStats("Returns",2013,1:16)
Returns2012<- GetStats("Returns",2012,1:16)
Returns2014$Year<- "2014"
Returns2013$Year<- "2013"
Returns2012$Year<- "2012"
Returns<-rbind(Returns2014,Returns2013,Returns2012)
save(Returns,file="C:/users/ryan/dropbox/rpackages/touchdown/data/Returns.rda")
rm(Returns2014,Returns2013,Returns2012)

Punting2014<- GetStats("Punting",2014,1:16)
Punting2013<- GetStats("Punting",2013,1:16)
Punting2012<- GetStats("Punting",2012,1:16)
Punting2014$Year<- "2014"
Punting2013$Year<- "2013"
Punting2012$Year<- "2012"
Punting<-rbind(Punting2014,Punting2013, Punting2012)
save(Punting,file="C:/users/ryan/dropbox/rpackages/touchdown/data/Punting.rda")
rm(Punting2014,Punting2013,Punting2012)

Defense2014<- GetStats("Defense",2014,1:16)
Defense2013<- GetStats("Defense",2013,1:16)
Defense2012<- GetStats("Defense",2012,1:16)
Defense2014$Year<- "2014"
Defense2013$Year<- "2013"
Defense2012$Year<- "2012"
Defense<- rbind(Defense2014,Defense2013,Defense2012)
save(Defense,file="C:/users/ryan/dropbox/rpackages/touchdown/data/Defense.rda")
rm(Defense2014,Defense2013,Defense2012)

rm(list=ls())
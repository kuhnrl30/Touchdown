library(Touchdown)
setwd("C:/users/ryan/dropbox/rprojects/yahoo")

#Setup passing data
Passing2014<- GetStats("Passing",2014,1:16)
Passing2013<- GetStats("Passing",2013,1:16)
Passing2012<- GetStats("Passing",2012,1:16)
save(Passing2014,Passing2013,Passing2012,file="2014PassingData.Rdata")
Passing<- c(Passing2012,Passing2013,Passing2014)
save(Passing,file="C:/users/ryan/dropbox/rpackages/touchdown/data/Passing.RData")


Rushing2014<- GetStats("Rushing",2014,1:16)
save(Rushing2014,file="2014RushingData.Rdata")

Kicking2014<-GetStats("Kicking",2014,1:16)
save(Kicking2014,file="2014KickingData.Rdata")

Returns2014<- GetStats("Returns",2014,1:16)
save(Returns2014,file="2014ReturnsData.Rdata")

Punting2014<- GetStats("Punting",2014,1:16)
save(Punting2014,file="2014PuntingData.Rdata")

Defense2014<- GetStats("Defense",2014,1:16)
save(Defense2014,file="2014DefenseData.Rdata")

# Combine data into single list and save
PlayerStats<-list(Passing=Passing2014,
                  Rushing=Rushing2014,
                  Kicking=Kicking2014,
                  Returns=Returns2014,
                  Punting=Punting2014,
                  Defense=Defense2014)
save(PlayerStats,file="C:/users/ryan/dropbox/rpackages/touchdown/data/PlayerStats.RData")
load("2014PassingData.RData")

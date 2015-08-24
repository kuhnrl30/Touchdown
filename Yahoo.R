library(Touchdown)
setwd("C:/users/ryan/dropbox/rprojects/yahoo")

#Setup ata
Passing2014<- GetStats("Passing",2014,1:16)
save(Passing2014,file="2014PassingData.Rmd")

Rushing2014<- GetStats("Rushing",2014,1:16)
save(Rushing2014,file="2014RushingData.Rmd")

Kicking2014<-GetStats("Kicking",2014,1:16)
save(Kicking2014,file="2014KickingData.Rmd")

Returns2014<- GetStats("Returns",2014,1:16)
save(Returns2014,file="2014Returns2014.Rmd")

Punting2014<- GetStats("Punting",2014,1:16)
save(Punting2014,file="2014Punting.Rmd")

Defense2014<- GetStats("Defense",2014,1:16)
save(Defense2014,file="2014Defense.Rmd")

PlayerStats<-list(Passing=Passing2014,
                  Rushing=Rushing2014,
                  Kicking=Kicking2014,
                  Returns=Returns2014,
                  Punting=Punting2014,
                  Defense=Defense2014)
save(PlayerStats,file="C:/users/ryan/dropbox/rpackages/touchdown/data/PlayerStats.Rmd")

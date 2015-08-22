#' To get player stats from Yahoo sports
#'
#' @param category once of 7 categories corresponding to the
#' types of data available.  Must be one of Passing",
#' "Rushing, Receiving, Kicking, Returns, Punting",
#' "or Defense"
#' @param year four digit year starting in 2000

#' @param week week of the season starting with 1 and ending
#'  with 17.  Post season data cannot be pulled with this
#'  function.
#'@return returns a dataframe with the desired stats
#'@export


GetStats<- function(category,year,week){

  categories<- c("Passing",
                 "Rushing",
                 "Receiving",
                 "Kicking",
                 "Returns",
                 "Punting",
                 "Defense")
  if(!category %in% categories)
    stop(paste("Error: category was not one of Passing",
          "Rushing, Receiving, Kicking, Returns, Punting",
          "or Defense",sep=", "))

  if(as.numeric(year)<2000)
    stop("Year must be greater than 2000")

  if(as.numeric(week)>17)
    stop("There are onlu 17 weeks in a season")

  base<- "http://sports.yahoo.com/nfl/stats/bycategory?conference=NFL&"
  URI<- paste(base,
              paste("cat",unlist(category),sep="="),
              paste("year=season_",year,sep=""),
              paste("timeframe=week",week,sep=""),
              sep="&")
#  URI

  GetData(URI)

}

#GetStats("Passing","2014","12")


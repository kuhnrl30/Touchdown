#' This function generates the URI needed to pull the data
#'
#' @param category once of 7 categories corresponding to the
#' types of data available.  Must be one of Passing",
#' "Rushing, Receiving, Kicking, Returns, Punting",
#' "or Defense"
#' 
#' @param year four digit year starting in 2000

#' @param week Numerical. Weeks of the season starting 
#' with 1 and ending with 17. 
#'  
#' @return A string with the URI needed to query the Yahoo
#'  sports statistics

GenerateURI<- function(category, year, week){

  base<- "http://sports.yahoo.com/nfl/stats/bycategory?"
  paste(base,
        paste("cat",category,sep="="),
        "conference=NFL",
        paste("year=season_",year,sep=""),
        paste("timeframe=Week",week,sep=""),
        sep="&")
}
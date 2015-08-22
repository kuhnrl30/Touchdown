#' Pull the league data for your league
#'
#' Scrapes the Yahoo page from the given URI and returns
#' desited the stats table.
#'
#' @param sig output from the GetSig() function
#' @param collection one of the collections from the
#' Yahoo API.  Possible values are "players",
#' "League", ""Teams", "Users",
#' @param resource resources are a subcategory of
#' collections.
#' @return a dataframe frame with the results of the API call
#' @import RJSONIO
#' @import httr
#' @export


GetLeagueData<- function(collection,resource, sig){
#   library(RJSONIO)
#   library(httr)
  base<- "http://fantasysports.yahooapis.com/fantasy/v2/"
  myURL<-'http://fantasysports.yahooapis.com/fantasy/v2/players;position=QB'

  y<- httr::GET(myURL,sig)
  z<- RJSONIO::fromJSON(as.character(y), asText=T)
  z

  # status_code(Req.json)
}

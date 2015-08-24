#' Function to pull the game meta data
#'
#' The function makes a call to the Yahoo API and 
#' returns the game data. Games refer to the seasonal 
#' fantasy footbal competition and are the highest
#' level in the API heirarchy. Games should not be confused
#' with an weekly NFL football game. 
#'
#' @param sig output from the GetSig() function
#' @return Game ID number as character
#' @importFrom  RJSONIO fromJSON
#' @import httr
#' @export


GetGameID<- function(sig){

  target<-"http://fantasysports.yahooapis.com/fantasy/v2/game/nfl?format=json"
  x<- httr::GET(target,sig)
  y<- RJSONIO::fromJSON(as.character(x), asText=T)
  y$fantasy_content$game$game_id
  }

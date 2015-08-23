#' Function to return the team data
#'
#' Returns data on the team
#'
#' @param GameID Character value.  The number assigned
#' to the annual fantasy footbal compettion. Games should 
#' not be confused with a weekly NFL football game. See 
#' alse the GetGameID() function. 
#'
#' @param LeagueID Character value. The ID number
#' representing the specific fantasy football league. 
#'
#' @param team Character value. The team ID, possibley values
#' are based on the number of teams in the league: typically
#' ranging from 1-10.
#'
#' @param DataType Character value. The type of data desired 
#' for the team. Possible values are stats, standings, or 
#' matchups.
#'
#' @param sig See also the GetSig() function
#' @return List. Fiels will vary by the datatype used.
#' @import httr
#' 

GetTeamData<-function(GameID,LeagueID,team=1,DataType="stats",sig){
	base       <- "http://fantasysports.yahooapis.com/fantasy/v2/team/"
	formatting <- switch(DataType,
						 stats     = "/stats?format=json",
						 standings = "/standings?format=json",
						 matchups  = "/matchups?format=json")
	
	x <- paste(GameID,".l.",LeagueID,".t.",team,sep="")
	y <- paste(base,x,formatting,sep="")
	z <- httr::GET(y,sig) 
	
}
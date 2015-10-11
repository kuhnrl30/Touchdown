#' Score the rushing stats
#'
#' Applies scoring rules to the player statistics. Default 
#' values are set to the standard scoring values.
#'
#' @param x dataframe of player statistics data. Should be
#' of the format produced by the GetStats() function.
#' @param RushingYds Vector with the yardage increment and 
#' point value. As an example, a player is awarded 1 point for
#' every 10 yards, then the score rule is of the format c(10,1)
#' @param RushingTD Points awarded for rushing touchdowns
#' @param FumbleLost Points awarded for each fumble lost. 
#' Since this function is for offensive stats, a fumble lost would occur
#' when the defense recovers the fumble.
#' @return 1 by nrow(x) matrix with the total score for each row
#' 

ScoreRushing<- function(x,
                        RushingYds=c(10,1),
                        RushingTD=6,
                        FumbleLost=-2){
  
  a<- as.matrix(as.numeric(x$TD),
                as.numeric(x$FumL), 
                stringsAsFactors = F)
  b<- as.matrix(RushingTD,FumbleLost)
  b%*%t(a) + as.numeric(x$Yds)%/%RushingYds[1]*RushingYds[2]
}
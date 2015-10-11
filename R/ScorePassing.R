#' Score the passing statistics
#'
#' Applies scoring rules to the player statistics. 
#' Default values are set to the standard scoring values.
#'
#' @param x dataframe of player statistics data. Should be
#' of the format produced by the GetStats() function.
#' @param PassingYds Vector with the yardage increment and 
#' point value. As an example, a player is awarded 1 point for
#' every 25 yards, then the score rule is of the format c(25,1)
#' @param PassingTD Points awarded for passing touchdowns
#' @param PassingInterception Points awarded for interceptions
#' thrown. Use a negative value if points are lost for interceptions.
#' @param FumbleLost Points awarded for each fumble lost. 
#' Since this function is for offensive stats, a fumble lost would occur
#' when the defense recovers the fumble.
#' @return 1 by nrow(x) matrix with the total score for each row
#' 


ScorePassing<- function(x,
                        PassingYds=c(25,1),
                        PassingTD=4,
                        PassingInterception=-1,
                        FumbleLost=-2){
  
  a<- as.matrix(as.numeric(x$TD),
                as.numeric(x$Int),
                as.numeric(x$FumL), 
                stringsAsFactors = F)
  b<- as.matrix(PassingTD,PassingInterception,FumbleLost)
  b%*%t(a) + as.numeric(x$Yds)%/%PassingYds[1]*PassingYds[2]
}
  
                        
                        

#                         ReceivingYds=c(10,1),
#                         ReceivingTD=6,
#                              ReturnTD=6,
#                              2PointConversion=2,
#                              OffFumbleTD=6,
#                              
#                              Sacks=1,
#                              Interception=2,
#                              FumbleRecovered=2,
#                              DefenseTD=6,
#                              Safety=2,
#                              BlockedKick=2,
#                              ReturnForTD=6,
#                              Shutout=10,
#                              Allowed6=7,
#                              Allowed13=4,
#                              Allowed27=0
#                              Allowed34=-1,
#                              Allowed35=-4)
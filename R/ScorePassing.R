#' Score the passing stats
#'
#' Applies scoring rules to the player statistics
#'
#' @param x dataframe of player statistics data. Should be
#' of the format produced by the GetStats() function.
#' @param PassingYds Vector with the yardage increment and 
#' point value. As an example, a player is awarded 1 point for
#' every 25 yards, then the score rule is of the format c(25,1)
#' @param PassingTD Number of points awarded for passing touchdowns
#' @param PassingInterception Number of points awarded for interceptions
#' thrown. Use a negative value if points are lost for interceptions.
#' @param FumbleLost Number of point awarded for each fumble lost. 
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
  
                        
                        
#                         RushingYds=c(10,1),
#                         RushingTD=6,
#                         ReceivingYds=c(10,1),
#                         ReceivingTD=6,
#                              ReturnTD=6,
#                              2PointConversion=2,
#                              OffFumbleTD=6,
#                              
#                              FieldGoal19=3,
#                              FieldGoal29=3,
#                              FieldGoal39=3,
#                              FieldGoal49=4,
#                              FieldGoal50=5,
#                              ExtraPoint=1,
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
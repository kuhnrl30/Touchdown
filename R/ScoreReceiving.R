#' Score the receiving stats
#'
#' Applies scoring rules to the player statistics. Default 
#' values are set to the standard scoring values.
#'
#' @param x dataframe of player statistics data. Should be
#' of the format produced by the GetStats() function.
#' @param ReceivingYds Vector with the yardage increment and 
#' point value. As an example, a player is awarded 1 point for
#' every 10 yards, then the score rule is of the format c(10,1)
#' @param ReceivingTD Points awarded for receiving touchdowns
#' @return 1 by nrow(x) matrix with the total score for each row
#' 


ScoreReceiving<- function(x,ReceivingYds=c(10,1),ReceivingTD=4){
  
  a<- as.matrix(as.numeric(x$TD))*ReceivingTD
  a + as.numeric(x$Yds)%/%ReceivingYds[1]*ReceivingYds[2]
}

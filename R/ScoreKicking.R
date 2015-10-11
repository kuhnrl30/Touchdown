#' Score the kicking stats
#'
#' Applies scoring rules to the player kicking statistics. 
#' Default values are set to the standard scoring values.
#'
#' @param x dataframe of player statistics data. Should be
#' of the format produced by the GetStats() function.
#' @param FieldGoal19 Points awarded for field goals with 
#' a range of 19 yards or less.
#' @param FieldGoal29 Points awarded for field goals with 
#' range greater than 19 yards and a far as 29 yards
#' @param FieldGoal39 Points awarded for field goals with 
#' range greater than 29 yards and a far as 39 yards
#' @param FieldGoal49 Points awarded for field goals with 
#' range greater than 39 yards and a far as 49 yards
#' @param FieldGoal50 Points awarded for field goals with 
#' range greater than 50 yards
#' @param ExtraPoint Points awarded for extra points
#' @return 1 by nrow(x) matrix with the total score for each row
#' 

ScoreKicking<- function(x,
                        FieldGoal19=3,
                        FieldGoal29=3,
                        FieldGoal39=3,
                        FieldGoal49=4,
                        FieldGoal50=5,
                        ExtraPoint=1){
  
  # gsub("-[[:digit:]]+","",Kicking2014$"30-39"[1])
  a<- as.matrix(cbind(as.numeric(gsub("-[[:digit:]]+","",x$"0-19")),
                as.numeric(gsub("-[[:digit:]]+","",x$"20-29")),
                as.numeric(gsub("-[[:digit:]]+","",x$"30-39")),
                as.numeric(gsub("-[[:digit:]]+","",x$"40-49")),
                as.numeric(gsub("-[[:digit:]]+","",x$"50+")),
                as.numeric(x$XPM)))
    b<- as.matrix(cbind(FieldGoal19,FieldGoal29,FieldGoal39,FieldGoal49,FieldGoal50,ExtraPoint))
    a%*%t(b)
}

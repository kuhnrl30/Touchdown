#' Touchdown
#' 
#' @name Touchdown
#' @docType package
#' @import httr XML RJSONIO
#' @importFrom plyr rbind.fill
#' @importFrom RJSONIO fromJSON
NULL




#' 2014 player statistics
#' 
#' A dataset containing 6 different categories of statistics.
#' categories are as follows: 
#' 
#' @format A list of 6 dataframes each of different categories:
#' \itemize{
#' \item Passing: Stats cuch as QB Rating, Completions, 
#' Attempts, and Touchdowns
#' \item Rushing: Stats such as Touchdowns, Fumbles, 
#' Yards, and Touchdowns
#' \item Kicking: Stats such as completes by yardage bin and 
#' completion percent
#' \item Returns: Stats such as number of kick returns, yards,
#'  and the length of the longest kick.
#' \item Punting Status such as number of touchbacks, blocks, 
#' and average yards
#' \item Defense: Stats such as Sacks, interceptions, forced 
#' fumbles, and touchdowns.
#' }
"PlayerStats"
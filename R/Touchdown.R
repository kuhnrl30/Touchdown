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
#' \itemize{
#' \item Passing: Stats such as QB Rating, Completions, 
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
#' @name PlayerStats
#' @docType data
#' @usage data(PlayerStats)
#' @keywords data
#' @format A list of 6 dataframes each of different categories:
NULL

#' 2014 player passing statistics
#' 
#' A dataset containing passing statistics for NFL players from 2014
#' \itemize{
#' \item Name: Player name
#' \item Team: Player team
#' \item QBRat: Quarterback rating
#' \item Comp: Completed pases
#' \item Att: Attempted pases
#' \item Yds: Yards from completed passes
#' \item Y/A: Yards after cathc
#' \item Lng: Longest pass
#' \item Int: Number of interceptions
#' \item TD: Number of touchdowns
#' \item Sack: Number of times the quarteback was sacked
#' \item SackYds: Yard lost after sacks
#' \item Fum: Fumble, both lost and recovered
#' \item FumL: Fumbles lost to the defense
#' \item Week: Week of the season
#' }
#' @name Passing
#' @docType data
#' @usage data(Passing)
#' @keywords data
NULL
#' Touchdown: A wrapper for the Yahoo Sports API
#' 
#' The Touchdown package enables you to use the Yahoo Sports API to 
#' retrieve data about your fantasy football team and analyze your 
#' your stats using the power of R. The package also contains 3 years
#' of player stats from 2012 to 2014 seasons to help you build your
#' new fantasy team. 
#' @name Touchdown
#' @docType package
#' @import httr XML RJSONIO
#' @importFrom plyr rbind.fill
#' @importFrom RJSONIO fromJSON
NULL


#' Weekly player passing statistics (2012-2014)
#' 
#' A dataset containing passing statistics for NFL players from the 2012 through 2014 seasons
#' @usage data(Passing)
#' @keywords data
#' @format A dataframe of 2448 rows and 17 variables:
#' \itemize{
#' \item Name: Player name
#' \item Team: Player team
#' \item QBRat: Quarterback rating
#' \item Comp: Completed passes
#' \item Att: Attempted passes
#' \item Yds: Yards from completed passes
#' \item Y/A: Yards after catch
#' \item Lng: Longest pass
#' \item Int: Number of interceptions
#' \item TD: Number of touchdowns
#' \item Sack: Number of times the quarteback was sacked
#' \item SackYds: Yard lost after sacks
#' \item Fum: Fumble, both lost and recovered
#' \item FumL: Fumbles lost to the defense
#' \item Week: Week of the season
#' \item Year: year or season
#' }
"Passing"


#' Weekly player Defense statistics (2012-2014)
#' 
#' A dataset containing Defensive statistics for NFL players from the 2012 through 2014 seasons
#' @usage data(Defense)
#' @format A dataframe of 2448 rows and 15 variables:
#' \itemize{
#' \item Name: Player name
#' \item Team: Player team
#' \item G: Game or week
#' \item Solo: Solo tackles
#' \item Ast: Assited tackles
#' \item Tot: Total tackles (Solo + Ast)
#' \item Sacks: Number of Sacks
#' \item Yds: Yards lost from sacks
#' \item Int: Interceptions
#' \item Yds1: Yds from interceptions
#' \item TD: Touchdowns from interceptions
#' \item FrcdFum: Forced Fumbles
#' \item PassDef: Passes Deflected
#' \item Week: Week of the season
#' \item Year: Year or season
#' }
#' @docType data
#' @keywords data
"Defense"


#' Weekly player Kicking statistics (2012-2014)
#' 
#' A dataset containing Kicking statistics for NFL players from the 2012 through 2014 seasons
#' @usage data(Kicking)
#' @format A dataframe of 2448 rows and 17 variables:
#' \itemize{
#' \item Name: Player name
#' \item Team: Player team
#' \item G: Game or week of the season
#' \item 0-19: Field goals attempted from 0 to 19 yards out,  The first digit is
#' the completed and second is the number attempted. e.g. 2-3
#' \item 20-29: 
#' \item 30-39: 
#' \item 40-49 
#' \item 50+: 
#' \item FGM: Field goals made
#' \item FGA: Field goals attempted
#' \item Pct: Percent field goals made
#' \item Lng: Long, the longest attempt completed
#' \item XPM: Extra points made
#' \item XPA: Extra points attempted
#' \item Pct.1:  Percent field goals made
#' \item Week: Week of the season
#' \item Year: Year or season
#' }
#' @docType data
#' @keywords data
"Kicking"

#' Weekly player Punting statistics (2012-2014)
#' 
#' A dataset containing Punting statistics for NFL players from the 2012 through 2014 seasons
#' @usage data(Punting)
#' @format A dataframe of 2448 rows by 17 variables:
#' \itemize{
#' \item Name: Player name
#' \item Team: Player team
#' \item G: Game or week of the season
#' \item Punt: Number of punts
#' \item Yds: Total yards
#' \item Avg: Average yards per punt 
#' \item Long: Longest punt during the week
#' \item In20: Number of punts falling between the 20 yard line and the endzone
#' \item FC: Fair catches
#' \item TB: Touchback
#' \item Blk: Blocked
#' \item Week: Week of the season
#' \item Year: Year or season
#' }
#' @docType data
#' @keywords data
"Punting"


#' Weekly player Punting statistics (2012-2014)
#' 
#' A dataset containing Return statistics for NFL players from the 2012 through 2014 seasons
#' @usage data(Punting)
#' @format A dataframe of 2448 rows by 17 variables:
#' \itemize{
#' \item Name: Player name
#' \item Team: Player team
#' \item G: Game or week of the season
#' \item KR: Number Kick off returns 
#' \item Yds: Total yards returned from kickoff returns
#' \item Avg: Average yards from kickoff returns
#' \item Long: Longest kickoff return
#' \item TD: Number of Touchdowns
#' \item PR: Number of punt returns
#' \item Yds.a: Total yards from punt returns
#' \item Avg.1: Average yards from punt returns
#' \item Long.1: Longest punt return
#' \item TD.1: Touchdown from punt returns
#' \item Week: Week of the season
#' \item Year: Year or season
#' }
#' @docType data
#' @keywords data
"Returns"

#' Weekly player Rushing statistics (2012-2014)
#' 
#' A dataset containing Rushing statistics for NFL players from the 2012 through 2014 seasons
#' @usage data(Punting)
#' @format A dataframe of 2448 rows by 17 variables:
#' \itemize{
#' \item Name: Player name
#' \item Team: Player team
#' \item G: Game or week of the season
#' \item Att: Attempts
#' \item Yds: Total rushing yards
#' \item Y/A: Yards per attempt
#' \item Lng: Longest Rush
#' \item TD: Number of Touchdowns
#' \item Fum: Fumbles
#' \item FumL: Fumbles lost
#' \item Week: Week of the season
#' \item Year: Year or season
#' }
#' @docType data
#' @keywords data
"Rushing"
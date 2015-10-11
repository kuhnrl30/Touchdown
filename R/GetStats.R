#' This function allows you to get player stats from Yahoo sports
#'
#' @param category Quoted string. One of 7 categories corresponding to the
#' types of data available.  Must be one of:
#' \itemize{
#' \item "Defense"
#' \item "Kicking"
#' \item "Passing"
#' \item "Punting"
#' \item "Receiving"
#' \item "Returns"
#' \item "Rushing"
#' }
#' 
#' @param year Four digit year starting in 2000
#' @param week Week of the season starting with 1 and ending
#'  with 17.  Note: Post season data cannot be pulled with this
#'  function.
#' @return A dataframe with the desired stats
#' @examples
#' GetStats("Passing",2014,1)
#' @importFrom plyr rbind.fill
#' @export



GetStats<- function(category,year,week){

  categories<- c("Passing",
                 "Rushing",
                 "Receiving",
                 "Kicking",
                 "Returns",
                 "Punting",
                 "Defense")
				 
  if(!category %in% categories)
    stop(paste("Error: category was not one of Passing",
          "Rushing, Receiving, Kicking, Returns, Punting",
          "or Defense",sep=", "))

  if(as.numeric(year)<2000)
    stop("Year must be greater than 2000")

  if(max(week)>17)
    stop("There are onlu 17 weeks in a season")
  
  if(as.numeric(min(week))<1)
    stop("Weeks value must be greater than 0")

 
  URIList<-lapply(week,function(x) GenerateURI(category,year,x))
  
  x<-lapply(URIList,function(x) GetData(x))
  y<-mapply(cbind,x,Week=week,SIMPLIFY=F)
  plyr::rbind.fill(y)
  
}


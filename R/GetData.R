#' Retrieve stats data
#'
#' Reads the HTML table with player statistics based on
#. the given URI and returns a dataframe.
#'
#' @param URI Properly formatted URI string. 
#' When sent to a browser, this URI would show Yahoo's 
#' NFL player stats page.
#' @return Dataframe with the player statistics
#' @import XML

GetData<- function(URI){
  x<- XML::readHTMLTable(URI,header=T,
                    encoding="UTF-8",
                    stringsAsFactors=F)[7][[1]]
  y<- which(x[2,]=="")
  names(x)<-x[1,]
  x[-1,-y]
}

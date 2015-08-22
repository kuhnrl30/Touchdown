#' Retrieve stats data
#'
#' Uses the inputs to create a URI and then scrapes 
#' the Yahoo page to return desired the stats table.
#'
#' @param URI string used to retrieve the relevant stats table
#' @return a dataframe with the player statistics
#' @import XML

GetData<- function(URI){
  x<- XML::readHTMLTable(URI,header=T,
                    encoding="UTF-8",
                    stringsAsFactors=F)[7][[1]]
  y<- which(x[2,]=="")
  names(x)<-x[1,]
  x[-1,-y]
}

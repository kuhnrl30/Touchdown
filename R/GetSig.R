#' Sets up the OAuth signature credential with the Yahoo API
#'
#' Authenticates the user for Yahoo API.  Requires the user
#' to supply a key and secret after setting up their app
#' on the Yahoo Developer Network
#'
#' @param key String value. Provided by the Yahoo Developer Network
#' when creating the application.
#' @param secret String value. Provided by the Yahoo Developer Network
#' when creating the application.
#' @return This is called for its side effect. Creates a signature 
#' object used to authenticate API calls when using the GetLeagueData
#' function.
#' @import httr
#' @export



GetSig<- function(key,secret){
  # library(httr)
  options("httr_oob_default" = TRUE)
  tokenURL      <- "https://api.login.yahoo.com/oauth/v2/get_request_token" # Get request token
  accessTokenURL<- "https://api.login.yahoo.com/oauth/v2/get_token" # Request access token
  authorizeURL  <- "https://api.login.yahoo.com/oauth/v2/request_auth" #Get user auth

  # Getting authentcated
  App   <- httr::oauth_app("yahoo",key,secret)
  yahoo <- httr::oauth_endpoint(request=tokenURL,authorizeURL,accessTokenURL)
  token <- httr::oauth1.0_token(yahoo,App)
  sig   <- httr::config(token = token)
  sig
  }


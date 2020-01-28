#' @title Deliver Jokes
#' @description
#'    Deliver jokes with punchlines. Wait 3 seconds for the punchline.
#' @param Setup Joke setup
#' @param Punchline Joke punchline
#' @param wait how long to wait to serve the punchline
#' @examples
#' joke('To the person who stole my presentation -','I hope you do not Excel.')
#'
#' @section Last Updated By:
#' Not Ellis Hughes
#' @section Last Update Date:
#' 2020/01/29

joke <- function(Setup, Punchline, wait = 3){
  print(Setup)
  Sys.sleep(wait)
  print(Punchline)
}

## Do not do this, this is for the test code example purposes only
is_dad_joke<-function(x){
  TRUE
}
caused_laugher <- function(x){
  message("Did not cause laughter")
  TRUE
}
embarrased_significant_other <- function(x){
  TRUE
}

#' @title Deliver Jokes
#' @description
#'    Deliver jokes with punchlines. Wait 3 seconds for the punchline.
#' @param Setup Joke setup
#' @param Punchline Joke punchline
#'
#' @examples
#' joke('To the person who stole my presentation -','I hope you do not Excel.')
#'
#' @section Last updated by:
#' Ellis Hughes
#' @section Last updated date:
#' 2020/01/29

joke <- function(Setup, Punchline){
  print(Setup)
  Sys.sleep(3)
  print(Punchline)
}


## Do not do this, this is for example purposes only
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

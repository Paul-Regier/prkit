#' Clear Global Environment
#'
#' Removes all variables from the global environment.
#'
#' @return Nothing
#' @export

clear_env <- function() {
  rm(list = ls(envir = .GlobalEnv), envir = .GlobalEnv)
  message("Environment cleared.")
}

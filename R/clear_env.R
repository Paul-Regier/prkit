#' Clear Global Environment
#'
#' Removes all variables from the global environment and clears console.
#'
#' @return Nothing
#' @export

clear_env <- function() {
  # Clear Environment
  rm(list = ls(envir = .GlobalEnv), envir = .GlobalEnv)


  # Clear Console
  cat("\014")

  message("Environment and console cleared.")
}

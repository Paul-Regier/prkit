#' Run All Above
#'
#' Runs all code above in an R Script
#'
#' @return Nothing
#' @export

run_all_above <- function() {
  ctx <- rstudioapi::getActiveDocumentContext()
  if (is.null(ctx)) return(invisible(NULL))

  # Get all lines above cursor
  cursor_row <- ctx$selection[[1]]$range$start["row"]
  if (cursor_row <= 1) return(invisible(NULL))

  code_to_run <- ctx$contents[1:(cursor_row - 1)]
  eval(parse(text = paste(code_to_run, collapse = "\n")), envir = .GlobalEnv)
}

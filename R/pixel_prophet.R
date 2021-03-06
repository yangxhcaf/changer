#' A function to run the prophet algorithm by pixel
#' @param x numeric vector
#' @param dates vector of dates, with equal length to x
#' @param ... arguments passed to `prophet`
#'
#'
#' @importFrom prophet prophet
#' @export
#'
pixel_prophet <- function(x, dates, dots = list()){
  df = data.frame(ds = dates, y = x)
  dots$df = df


  mod = suppressMessages(do.call(prophet::prophet, args = dots))

  #return the time and magnitude of changes
  stopifnot(NROW(mod$params$delta)==1)
  res = mod$params$delta[1,]

  return(res)
}

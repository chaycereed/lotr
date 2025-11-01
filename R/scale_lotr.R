#' LOTR color scales for ggplot2
#'
#' Color and fill scales using LOTR palettes for ggplot2 visualizations.
#' 
#' The base functions (\code{scale_color_lotr} and \code{scale_fill_lotr}) 
#' default to continuous scales but can be made discrete with \code{discrete = TRUE}.
#' For explicit control, use the \code{_d} (discrete) or \code{_c} (continuous) variants.
#'
#' @param name Name of the palette. Available palettes: "shire", "mordor", 
#'   "rivendell", "minasmorgul", "aragorn", "samwise", "gollum", 
#'   "legolas", "sauron".
#' @param discrete Logical. If TRUE, uses discrete scale. If FALSE (default), 
#'   uses continuous scale. Only applies to base functions, not \code{_d} or \code{_c} variants.
#' @param reverse Logical. Should the palette be reversed? Default is FALSE.
#' @param ... Additional arguments passed to ggplot2 discrete or continuous scale functions
#'
#' @return A ggplot2 scale object
#'
#' @examples
#' \dontrun{
#' library(ggplot2)
#' 
#' # Using base function with continuous (default)
#' ggplot(faithfuld, aes(waiting, eruptions, fill = density)) +
#'   geom_tile() +
#'   scale_fill_lotr("mordor")
#' 
#' # Using base function with discrete
#' ggplot(iris, aes(x = Species, fill = Species)) +
#'   geom_bar() +
#'   scale_fill_lotr("shire", discrete = TRUE)
#' 
#' # Using explicit discrete scale
#' ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
#'   geom_point(size = 3) +
#'   scale_color_lotr_d("shire")
#' 
#' # Using explicit continuous scale
#' ggplot(faithfuld, aes(waiting, eruptions, fill = density)) +
#'   geom_tile() +
#'   scale_fill_lotr_c("mordor")
#' }
#'
#' @name scale_lotr
NULL


#' @rdname scale_lotr
#' @export
scale_color_lotr <- function(name, discrete = FALSE, reverse = FALSE, ...) {
  if (discrete) {
    scale_color_lotr_d(name, reverse = reverse, ...)
  } else {
    scale_color_lotr_c(name, reverse = reverse, ...)
  }
}


#' @rdname scale_lotr
#' @export
scale_colour_lotr <- scale_color_lotr


#' @rdname scale_lotr
#' @export
scale_fill_lotr <- function(name, discrete = FALSE, reverse = FALSE, ...) {
  if (discrete) {
    scale_fill_lotr_d(name, reverse = reverse, ...)
  } else {
    scale_fill_lotr_c(name, reverse = reverse, ...)
  }
}


#' @rdname scale_lotr
#' @export
scale_color_lotr_d <- function(name, reverse = FALSE, ...) {
  ggplot2::discrete_scale(
    "color", 
    paste0("lotr_", name),
    palette = function(n) lotr_palette(name, n = n, type = "discrete", reverse = reverse),
    ...
  )
}


#' @rdname scale_lotr
#' @export
scale_colour_lotr_d <- scale_color_lotr_d


#' @rdname scale_lotr
#' @export
scale_fill_lotr_d <- function(name, reverse = FALSE, ...) {
  ggplot2::discrete_scale(
    "fill", 
    paste0("lotr_", name),
    palette = function(n) lotr_palette(name, n = n, type = "discrete", reverse = reverse),
    ...
  )
}


#' @rdname scale_lotr
#' @export
scale_color_lotr_c <- function(name, reverse = FALSE, ...) {
  ggplot2::scale_color_gradientn(
    colors = lotr_palette(name, n = 256, type = "continuous", reverse = reverse),
    ...
  )
}


#' @rdname scale_lotr
#' @export
scale_colour_lotr_c <- scale_color_lotr_c


#' @rdname scale_lotr
#' @export
scale_fill_lotr_c <- function(name, reverse = FALSE, ...) {
  ggplot2::scale_fill_gradientn(
    colors = lotr_palette(name, n = 256, type = "continuous", reverse = reverse),
    ...
  )
}
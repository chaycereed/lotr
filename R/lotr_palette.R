#' Access LOTR Color Palettes
#'
#' Returns a vector of colors from the specified LOTR palette.
#'
#' @param name Name of the palette. Available palettes: "shire", "mordor", 
#'   "rivendell", "minas_morgul", "aragorn", "samwise", "gollum", 
#'   "legolas", "gandalf".
#' @param n Number of colors to return. If NULL, returns all colors in the palette.
#'   If n is greater than the number of colors in the palette, colors will be 
#'   interpolated.
#' @param type Type of palette: "discrete" or "continuous". If NULL, will be 
#'   automatically determined based on n.
#' @param reverse Logical. Should the palette be reversed? Default is FALSE.
#'
#' @return A character vector of hex color codes
#'
#' @examples
#' # Get all colors from the Shire palette
#' lotr_palette("shire")
#' 
#' # Get 5 colors from Mordor
#' lotr_palette("mordor", n = 5)
#' 
#' # Get reversed Rivendell palette
#' lotr_palette("rivendell", reverse = TRUE)
#' 
#' # Interpolate to get 20 colors
#' lotr_palette("minasmorgul", n = 20, type = "continuous")
#' 
#' @export
lotr_palette <- function(name, n = NULL, type = NULL, reverse = FALSE) {
  
  # Check if palette exists
  if (!name %in% names(lotr_palettes)) {
    stop(paste0("Palette '", name, "' not found. Available palettes: ",
                paste(names(lotr_palettes), collapse = ", ")))
  }
  
  # Get the palette
  pal <- lotr_palettes[[name]]
  
  if (length(pal) == 0) {
    stop(paste0("Palette '", name, "' has no colors defined."))
  }
  
  # Reverse if requested
  if (reverse) {
    pal <- rev(pal)
  }
  
  # If n is NULL, return all colors
  if (is.null(n)) {
    return(pal)
  }
  
  # Determine type if not specified
  if (is.null(type)) {
    type <- if (n <= length(pal)) "discrete" else "continuous"
  }
  
  # Return colors based on type
  if (type == "discrete") {
    # For discrete, select evenly spaced colors
    if (n > length(pal)) {
      warning(paste0("n (", n, ") is greater than palette length (", 
                     length(pal), "). Using continuous interpolation."))
      return(grDevices::colorRampPalette(pal)(n))
    }
    # Select evenly spaced colors
    indices <- round(seq(1, length(pal), length.out = n))
    return(pal[indices])
  } else {
    # For continuous, interpolate
    return(grDevices::colorRampPalette(pal)(n))
  }
}


#' Print all available LOTR palettes
#'
#' Displays all available palette names and their colors
#'
#' @param print_colors Logical. Should colors be displayed? Default is TRUE.
#'
#' @return Invisibly returns a character vector of palette names
#'
#' @examples
#' # List all palettes
#' lotr_palette_names()
#' 
#' @export
lotr_palette_names <- function(print_colors = TRUE) {
  pal_names <- names(lotr_palettes)
  
  if (print_colors) {
    for (name in pal_names) {
      pal <- lotr_palettes[[name]]
      pal <- pal[!grepl("REPLACE", pal)]
      if (length(pal) > 0) {
        cat(paste0(name, ": "))
        cat(paste(pal, collapse = " "))
        cat("\n")
      } else {
        cat(paste0(name, ": (no colors defined yet)\n"))
      }
    }
  } else {
    return(pal_names)
  }
  
  invisible(pal_names)
}
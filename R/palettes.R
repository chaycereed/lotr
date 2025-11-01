#' LOTR Color Palettes
#'
#' A collection of color palettes inspired by locations, characters, and iconic 
#' scenes from J.R.R. Tolkien's Middle-earth.
#'
#' @format A list of character vectors containing hex color codes
#' 
#' Available palettes:
#' \itemize{
#'   \item \strong{shire}: Warm greens and light browns
#'   \item \strong{mordor}: Ashy blacks and volcanic reds
#'   \item \strong{rivendell}: Ethereal blues and sparkling teals
#'   \item \strong{minasmorgul}: Glowing greens and deep blacks
#'   \item \strong{aragorn}: Kingly silvers and calm blues
#'   \item \strong{samwise}: Soft pinks and rosey reds
#'   \item \strong{gollum}: Murky blues and sickly greens
#'   \item \strong{legolas}: Forest greens and bright yellows
#'   \item \strong{sauron}: Deceiving golds and lava reds
#' }
#'
#' @examples
#' # View all available palettes
#' names(lotr_palettes)
#' 
#' # View a specific palette
#' lotr_palettes$shire
#' 
#' @export
lotr_palettes <- list(
 
  shire = c(
    "#D4C089",  
    "#c1ae7b",  
    "#a6a65b",  
    "#839d58",  
    "#5e8a40", 
    "#4A7A35",  
    "#325324"   
  ),
  
  mordor = c(
    "#fc262a",  
    "#c1181e",  
    "#9a1317",  
    "#770608",  
    "#540406", 
    "#340304",  
    "#160102"  
  ),
  
  rivendell = c(
    "#6ed7d7", 
    "#38b8ce", 
    "#3398c3", 
    "#2975d8",  
    "#1d4ee2", 
    "#0736c3", 
    "#020684"  
  ),
    
  minasmorgul = c(
    "#7de8b3",  
    "#56b987",  
    "#3c9669", 
    "#467960",  
    "#445b50",  
    "#3d3d3d", 
    "#1e1e1e"   
  ),
  
  # DISCRETE PALETTES
  # Perfect for categories, groups, and distinct elements
  
  aragorn = c(
    "#abb4c5",  
    "#8193b6",  
    "#5a719c",  
    "#325494", 
    "#052e79",  
    "#041979",
    "#010b54"   
  ),

  samwise = c(
    "#e67ea4",
    "#c65b82",
    "#b1446c",
    "#9f2c56",
    "#831a40",
    "#630c2c",
    "#3c0318"
  ),
  
  legolas = c(
    "#eeef20",  
    "#d4d700",  
    "#bfd200",  
    "#80b918", 
    "#55a630", 
    "#468927",  
    "#2d5e17"  
  ),
    
  gollum = c(
    "#89adae",
    "#70afa4",
    "#57a39e",
    "#2c8686",
    "#196572",
    "#0a435b",
    "#002b39"
  ),

  
  sauron = c(
    "#b18500",  
    "#b16400",  
    "#b04d01",  
    "#c1181e",  
    "#8a0507",  
    "#500405", 
    "#1f0202"  
  )
)
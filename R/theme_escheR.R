#' Customize the appearance of escheR plots
#'
#' @param border Logical. Whether to display a border around the plotting panel.
#' @param border_colour Character. Colour of the panel border.
#' @param border_width Numeric. Width of the panel border.
#'
#' @return A ggplot2 theme object.
#'
#' @importFrom ggplot2 theme_void theme element_rect
#' @export
#'
#' @examples
#' theme_escheR()
#' theme_escheR(border = TRUE)
#' theme_escheR(
#'   border = TRUE,
#'   border_colour = "black",
#'   border_width = 1
#' )
theme_escheR <- function(
    border = FALSE,
    border_colour = "black",
    border_width = 0.5
) {
  p <- theme_void()

  if (border) {
    p <- p +
      theme(
        panel.border = element_rect(
          colour = border_colour,
          fill = NA,
          linewidth = border_width
        )
      )
  }

  return(p)
}

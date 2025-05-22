#' Theme Breton for ggplot2 Plots
#'
#' @description
#' Applies Breton look and feel to an existing ggplot2 plot.
#'
#'
#' @return A ggplot2 theme object Breton style
#' @export
theme_breton <- function() {
  ggplot2::theme(
    text = element_text(
      family = "Encode Sans Condensed",
      size = 10
    ),
    panel.background = element_rect(fill = "#FFFFFF"),
    panel.grid = element_line(color = "grey95"),
    axis.line = element_line(color = "darkgrey"),
    plot.title = element_text(
      face = "bold",
      size = rel(1.55)
    ),
    plot.title.position = "plot",
    plot.caption = ggtext::element_markdown(
      color = "darkgrey",
      hjust = 0,
      lineheight = 1.25,
      size = rel(0.85)
    ),
    plot.caption.position = "plot"
  )
}
#'
#' @importFrom ggtext element_markdown
#'
#' @examples
#' mtcars |>
#' ggplot2::ggplot(ggplot2::aes(x = cyl, group = cyl, fill = as.factor(cyl))) +
#' ggplot2::geom_bar() +
#' ggplot2::labs(title = "Ggplot2 Plot",
#'      caption = "Nice plot") +
#' theme_breton()
#'


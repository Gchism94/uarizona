#' UArizona Color Palette (Discrete) and Scales
#'
#' An eight-color colorblind friendly qualitative discrete palette that is
#' based on colors on the UArizona branding guidelines.
#'
#' @references https://brand.arizona.edu/applying-the-brand/colors
#' @return Character vector of UArizona palette HEX codes.
#' @export
#'
#' @examples
#' uarizona_pal()
uarizona_pal <- function() {
  values <- c(
    "#AB0520", "#0C234B", "#1D3E6D", "#81D3EB", "#70B865",
    "#A95C42", "#F4EDE5", "#262F40")

  f <- scales::manual_pal(values)
  attr(f, "max_n") <- length(values)
  f
}

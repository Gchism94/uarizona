test_that("points outside the limits are plotted as NA", {
  df <- data.frame(x = c(-1, 1, 2))
  p <- ggplot2::ggplot(df, ggplot2::aes(x, 1, colour = x)) +
    ggplot2::geom_point() +
    scale_uarizona_continuous(limits = c(-1, 1))

  correct_fill <- c("#1D3E6D", "#D5D9D9", "#636B6F")
  expect_equal(ggplot2::layer_data(p)$colour, correct_fill)
})

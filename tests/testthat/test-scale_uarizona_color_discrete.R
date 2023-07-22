test_that("factors assume appropriate colors for 3-category variable", {
  df <- data.frame(x = 1:3, y = 3:1, z = factor(letters[1:3]))
  p <- ggplot2::ggplot(df,
               ggplot2::aes(x, y, color = z, shape = z)) +
    ggplot2::geom_point() +
    uarizona::scale_uarizona_color_discrete()

  test_that("factors assume appropriate colors for 3-category variable", {
  df <- data.frame(x = 1:3, y = 3:1, z = factor(letters[1:3]))
  p <- ggplot2::ggplot(df,
              ggplot2::aes(x, y, color = z, shape = z)) +
    ggplot2::geom_point() +
    scale_uarizona_color_discrete()

  correct_color <- c("#AB0520", "#0C234B", "#1D3E6D")
  expect_equal(ggplot2::layer_data(p)$colour, correct_color)
})

test_that("factors assume appropriate colors for 8-category variable", {
  df <- data.frame(x = 1:8, y = 8:1, z = factor(letters[1:8]))
  p2 <- ggplot2::ggplot(df,
              ggplot2::aes(x, y, color = z, shape = z)) +
    ggplot2::geom_point() +
    scale_uarizona_color_discrete()

  correct_color <- c("#AB0520", "#0C234B", "#1D3E6D", "#81D3EB", "#70B865",
                             "#A95C42", "#F4EDE5", "#262F40")

  expect_equal(ggplot2::layer_data(p2)$colour, correct_color)
})

test_that("use of colour does not affect implementation", {
  df <- data.frame(x = 1:4, y = 4:1, z = factor(letters[1:4]))
  p3 <- ggplot2::ggplot(df,
              ggplot2::aes(x, y, color = z, shape = z)) +
    ggplot2::geom_point() +
    scale_uarizona_colour_discrete()

  correct_color <- c("#AB0520", "#0C234B", "#1D3E6D", "#81D3EB")
  expect_equal(ggplot2::layer_data(p3)$colour, correct_color)
})
})

test_that("appropriate fill for factors over 8-levels", {
  df <- data.frame(x = 1:9, y = 9:1, z = factor(letters[1:9]))
  p4 <- ggplot2::ggplot(df,
                        ggplot2::aes(x, y, color = z)) +
    ggplot2::geom_point() +
    scale_uarizona_color_discrete()

  expect_warning(ggplot2::ggplot_build(p4),
                 "This manual palette can handle a maximum of 8 values. You have supplied 9.")
})

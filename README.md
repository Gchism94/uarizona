
# uarizona

<a href="https://aidangildea.github.io/uarizona/"><img src="man/figures/logo.png" align="right" height="113" /></a>

<!-- badges: start -->

<a
href="https://github.com/aidangildea/uarizona/actions/workflows/R-CMD-check.yaml"
class="pkgdown-devel"><img
src="https://github.com/aidangildea/uarizona/actions/workflows/R-CMD-check.yaml/badge.svg"
alt="R-CMD-check" /></a>
<a href="https://cran.r-project.org/package=uarizona"
class="pkgdown-release"><img
src="https://www.r-pkg.org/badges/version/uarizona" alt="CRAN Status" /></a>
<!-- badges: end -->

## Overview

**uarizona** allows users to generate visualizations with UArizona’s official
suite of colors in a color blind friendly way. By using it alongside
**ggplot2**, you can easily promote accessibility in the UArizona community
and beyond.

## Installation

You can install the official version of `uarizona` from CRAN with:

``` r
# Install uarizona directly:
install.packages("uarizona")
```

Or alternatively, you can install the development version from GitHub:

``` r
# install.packages("devtools")
devtools::install_github("aidangildea/uarizona")
```

## Usage

This package is fully integrated with ggplot2, and therefore, allows you
to customize several visualization features such as the theme and color
scales of your plots created with ggplot2.

## Example

By using **uarizona** functions, you can easily convert your visualizations
to UArizona official colors.

``` r
library(ggplot2)
library(uarizona)

plot1 <- ggplot(mpg, aes(cty, hwy)) +
  geom_point(aes(colour = fl)) +
  labs(
    title = "City Miles per Gallon vs. Highway Miles per Gallon By Fuel Type",
    caption = "Data sourced from mpg in ggplot2 package.",
    x = "City Miles per Gallon (MPG)", 
    y = "Highway Miles per Gallon (MPG)"
  )

plot2 <- ggplot(mpg, aes(cty, hwy)) +
  geom_point(aes(color = cyl)) +
  labs(
    title = "City Miles per Gallon vs. Highway Miles per Gallon By Cylinders", 
    caption = "Data sourced from mpg in ggplot2 package.", 
    x = "City Miles per Gallon (MPG)", 
    y = "Highway Miles per Gallon (MPG)"
  )
```

Then, by pairing them with functions from this package, you can convert
them into UArizona-branded and colorblind-friendly versions.

``` r
plot1 +
  theme_uarizona() +
  scale_uarizona_color_discrete()
```

<img src="man/figures/README-themeuarizona-1.png" width="100%" />

``` r

plot2 +
  theme_uarizona() +
  scale_uarizona_continuous()
```

<img src="man/figures/README-themeuarizona-2.png" width="100%" />

## Questions

For further questions about this package and its use, please open an
issue.

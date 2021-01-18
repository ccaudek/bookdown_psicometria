set.seed(1014)

knitr::opts_chunk$set(
  comment = "#>",
  collapse = TRUE,
  cache = FALSE,
  out.width = "90%",
  fig.align = 'center',
  fig.width = 6,
  fig.asp = 0.618,  # 1 / phi
  fig.show = "hold"
)

options(dplyr.print_min = 6, dplyr.print_max = 6)

# Supress crayon output
options(crayon.enabled = FALSE)

library("tidyverse")
library("here")

# Se theme_papaja::apa() for all figures
library("papaja")
theme_set(papaja::theme_apa())




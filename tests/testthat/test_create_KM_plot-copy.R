library(tidyr)
library(dplyr)
library(ggplot2)

test_that("create_KM_plot() works", {
  data(demo)

  vdiffr::expect_doppelganger(
    "create_KM_plot",
    demo |> head(100) |> create_KM_plot()
  )
})

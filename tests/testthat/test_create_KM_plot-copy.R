library(tidyr)
library(dplyr)
library(tidyr)
library(ggplot2)

test_that("create_KM_plot() works", {
  data(adsl)
  data(biomark)
  demo = left_join(adsl, biomark, by = "SUBJID")
  demo$marker_treat <- paste0(demo$marker, "_", demo$treatment)

  vdiffr::expect_doppelganger(
    "create_KM_plot",
    demo |> head(100) |> create_KM_plot()
  )
})

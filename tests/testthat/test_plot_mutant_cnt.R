library(tidyr)
library(dplyr)
library(ggplot2)

test_that("plot_mutant_cnt() works", {
  data(adsl)
  data(biomark)
  demo = left_join(adsl, biomark, by = "SUBJID")

  vdiffr::expect_doppelganger(
    "plot_mutant_cnt",
    demo |> plot_mutant_cnt()
  )
})

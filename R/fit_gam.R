
#' To model a generalized additive model
#'
#' @param x the database table with biomarker and treatment
#' @returns a model summary
#' @importFrom mgcv gam
#' @export
fit_gam = function(x){
  gam_model <- gam(DTH ~ ATRT + PRSURG + PFSDYCR + AGE + SEX + RACE +
                 B_WEIGHT + B_HEIGHT + marker, data = x,
                 family = binomial, method = "REML")
  summary(gam_model)
}

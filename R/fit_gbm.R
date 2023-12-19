
#' To model a generalized boosted regression model
#'
#' @param x the database table with biomarker and treatment
#' @returns a model summary
#' @importFrom gbm gbm
#' @export
fit_gbm = function(x){
  my_fit = gbm(DTH ~ ATRT + PRSURG + PFSDYCR + AGE + SEX + RACE +
                 B_WEIGHT + B_HEIGHT + marker,
               data = x,
               distribution = "bernoulli",
               interaction.depth = 3,
               cv.folds = 5,
               n.cores = 1)
  summary(my_fit)
}


#' To model a generalized boosted regression model
#'
#' @param x the database table with biomarker and treatment
#' @param x_vars the predictors of interest, can be a vector of predictors
#' @returns a model summary
#' @importFrom gbm gbm
#' @export
fit_gbm = function(x, x_vars){
  my_formula = paste0("DTH ~ ", paste(x_vars, collapse = " + "))
  print(my_formula)
  my_fit = gbm(my_formula,
               data = x,
               distribution = "bernoulli",
               interaction.depth = 3,
               cv.folds = 5)
  summary(my_fit)
}

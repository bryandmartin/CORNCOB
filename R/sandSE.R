#' Compute sandwich standard error
#'
#' @param mod an object of class \code{bbdml}
#' @param numerical Boolean. Defaults to \code{FALSE}. Indicator of whether to use the numeric Hessian and score (not recommended).
#' @return Sandwich variance-covariance matrix
#'
#' @examples
#' data(soil_phylum_small)
#' mod <- bbdml(formula = OTU.1 ~ DayAmdmt,
#' phi.formula = ~ DayAmdmt,
#' data = soil_phylum_small)
#' sandSE(mod)
#'
#' @export
sandSE <- function(mod, numerical = FALSE) {
  # Form A^-1 * B * A^-1
  A <- hessian(mod, numerical = numerical)
  B <- score(mod, numerical = numerical, forHess = TRUE)
  Ainv <- solve(A)
  return(Ainv %*% B %*% Ainv)
}

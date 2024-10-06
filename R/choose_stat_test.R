#' Choose and perform a statistical test based on data characteristics
#'
#' @param data1 A numeric vector of data points.
#' @param data2 A numeric vector of data points (if applicable).
#' @param paired A logical value indicating if the samples are paired (default: FALSE).
#' @return A list containing the recommended test and its results.
#' @examples
#' data1 <- c(5.1, 5.8, 6.3, 4.9, 6.2)
#' data2 <- c(4.9, 5.2, 6.1, 4.8, 5.9)
#' result <- choose_stat_test(data1, data2, paired = FALSE)
#' print(result)
#' @export
choose_stat_test = function(data1, data2 = NULL, paired = FALSE) {
  if (is.null(data2)) {
    # One-sample or single vector case
    shapiro_test = shapiro.test(data1)
    normal = shapiro_test$p.value > 0.05

    if (normal) {
      # Data is normally distributed
      return(list(test = "One-sample t-test", result = t.test(data1, mu = 0)))
    } else {
      # Data is not normally distributed
      return(list(test = "Wilcoxon signed-rank test", result = wilcox.test(data1, mu = 0)))
    }
  } else {
    # Two-sample case
    shapiro_test1 = shapiro.test(data1)
    shapiro_test2 = shapiro.test(data2)
    normal1 = shapiro_test1$p.value > 0.05
    normal2 = shapiro_test2$p.value > 0.05

    if (normal1 && normal2) {
      # Both datasets are normally distributed
      var_test = var.test(data1, data2)
      equal_var = var_test$p.value > 0.05

      if (paired) {
        return(list(test = "Paired t-test", result = t.test(data1, data2, paired = TRUE)))
      } else {
        if (equal_var) {
          return(list(test = "Two-sample t-test", result = t.test(data1, data2, var.equal = TRUE)))
        } else {
          return(list(test = "Welch's t-test", result = t.test(data1, data2, var.equal = FALSE)))
        }
      }
    } else {
      # At least one dataset is not normally distributed
      if (paired) {
        return(list(test = "Wilcoxon signed-rank test", result = wilcox.test(data1, data2, paired = TRUE)))
      } else {
        return(list(test = "Mann-Whitney U test", result = wilcox.test(data1, data2)))
      }
    }
  }
}

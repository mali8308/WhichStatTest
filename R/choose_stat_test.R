#' Choose Statistical Test Based on Data Characteristics
#'
#' This function recommends an appropriate statistical test based on data characteristics such as normality, 
#' variance equality, and whether the data is paired.
#'
#' @param data1 A numeric vector representing the first dataset.
#' @param data2 A numeric vector representing the second dataset (optional).
#' @param paired A boolean indicating whether the data is paired (default is FALSE).
#' @param sigma_known A boolean indicating whether the population variance is known (default is FALSE).
#' @return A string indicating the recommended statistical test.
#' @export
choose_stat_test = function(data1, data2 = NULL, paired = FALSE, sigma_known = FALSE) {
  
  # Perform Shapiro-Wilk test for normality
  shapiro_data1 = shapiro.test(data1)$p.value
  normality_data1 = ifelse(shapiro_data1 > 0.05, TRUE, FALSE)
  
  if (!is.null(data2)) {
    shapiro_data2 = shapiro.test(data2)$p.value
    normality_data2 = ifelse(shapiro_data2 > 0.05, TRUE, FALSE)
  }
  
  # If the data is normally distributed
  if (normality_data1 == TRUE & (is.null(data2) || normality_data2 == TRUE)) {
    
    # One-sample case
    if (is.null(data2)) {
      if (sigma_known == TRUE) {
        return("Z-test for one sample")
      } else {
        return("One-sample T-test")
      }
    }
    
    # Two-sample case
    else {
      if (paired == TRUE) {
        return("Paired T-test")
      } else {
        # Check variance equality using Flinger-Killeen or similar (Levene's or Bartlett's)
        var_test = var.test(data1, data2)$p.value
        equal_variance = ifelse(var_test > 0.05, TRUE, FALSE)
        
        if (equal_variance == TRUE) {
          return("Pooled variance T-test")
        } else {
          return("Welch's T-test")
        }
      }
    }
    
  } else {
    
    # If the data is not normally distributed
    if (is.null(data2)) {
      return("One-sample Wilcoxon test")
    } else {
      if (paired == TRUE) {
        return("Wilcoxon Signed Rank Test")
      } else {
        return("Mann-Whitney U Test / Wilcoxon Rank Sum Test")
      }
    }
  }
}

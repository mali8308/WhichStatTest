# `WhichStatTest` 📊🧠

[![R](https://img.shields.io/badge/R-%3E%3D%203.5.0-blue)](https://www.r-project.org/)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)

## Overview

`WhichStatTest` is an R package designed to help users select the appropriate statistical test based on their data characteristics. The package offers a straightforward function that analyzes your data and provides recommendations for the correct test to use based on normality, variance, and whether your data is paired or not.

This package is particularly useful for researchers, students, and data analysts who need guidance in selecting the proper statistical methods.

## Features

- **Automatic Test Recommendation**: Takes in data and suggests the appropriate statistical test.
- **Test Criteria Considered**:
  - Normality (Shapiro-Wilk Test)
  - Equality of Variances (Levene's Test)
  - Paired vs. Unpaired data
- **Supports Parametric and Non-Parametric Tests**.

## Installation 🛠️

You can install the `WhichStatTest` package directly from GitHub using the `devtools` package:

```r
# Install devtools if you don't have it
install.packages("devtools")

# Install the package from GitHub
devtools::install_github("mali8308/WhichStatTest")
```

## Usage 🚀

Here's a quick example of how to use the choose_stat_test function:

```r
# Load the package
library(WhichStatTest)

# Example data: Two sample vectors
data1 = c(5.1, 5.8, 6.3, 4.9, 6.2)
data2 = c(4.9, 5.2, 6.1, 4.8, 5.9)

# Call the function to recommend a statistical test
choose_stat_test(data1, data2, paired = FALSE)
```

## How It Works 🧠

The choose_stat_test function follows this decision flow:

1. **Normality Check**: Conducts a Shapiro-Wilk test to determine if data follows a normal distribution.
2. **Variance Check**: If the data is normally distributed, Levene's test is performed to check for equal variances.
3. **Test Recommendation**: Based on the results, the function recommends the most appropriate test (e.g., t-test, Wilcoxon test, ANOVA, Kruskal-Wallis).

## Contributing 🤝

We welcome contributions! If you would like to improve the package, feel free to fork the repository and submit a pull request.

1. Fork it (https://github.com/mali8308/WhichStatTest/fork)
2. Create your feature branch (git checkout -b feature/AmazingFeature)
3. Commit your changes (git commit -m 'Add some AmazingFeature')
4. Push to the branch (git push origin feature/AmazingFeature)
5. Create a new Pull Request

## License 📝

This package is licensed under the MIT License. 

## References 📚

Aho, K. A. (2013). _Foundational and applied statistics for biologists using R_. CRC Press.

## Acknowledgments 🙏

Special thanks to all contributors, and to the R community for their continuous support and inspiration!

# `choose_stat_test` 📊🧠

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


### Key Sections Explained

1. **Badges**: These add visual appeal and useful metadata, such as R version and license type.
2. **Overview**: A concise description of the package.
3. **Features**: Highlights the main features of the package.
4. **Installation**: Clear instructions on how to install the package from GitHub.
5. **Usage**: A quick, simple example to help users get started quickly.
6. **How It Works**: Explains the logic behind the function to give users insight into its inner workings.
7. **Contributing**: Encourages contributions and explains how users can contribute to the project.
8. **License**: Specifies the license for the package.
9. **Acknowledgments**: Gives credit to contributors and the community.

### How to Add the `README.md` to GitHub

1. **Navigate to your repository**: Go to the repository page on GitHub (e.g., `https://github.com/mali8308/statTestChooser`).
2. **Create a new file**: Click on the "Add file" button and choose "Create new file".
3. **Name the file**: Name it `README.md`.
4. **Paste the content**: Paste the `README.md` code above into the editor.
5. **Commit the file**: Add a commit message (e.g., "Add README") and click on "Commit new file".

This will create the `README.md` file, and it will automatically be displayed on your GitHub repository's main page.

Let me know if you need further customization or assistance!


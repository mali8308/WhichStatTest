# `choose_stat_test` 📊🧠

[![R](https://img.shields.io/badge/R-%3E%3D%203.5.0-blue)](https://www.r-project.org/)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)

## Overview

`choose_stat_test` is an R package designed to help users select the appropriate statistical test based on their data characteristics. The package offers a straightforward function that analyzes your data and provides recommendations for the correct test to use based on normality, variance, and whether your data is paired or not.

This package is particularly useful for researchers, students, and data analysts who need guidance in selecting the proper statistical methods.

## Features

- **Automatic Test Recommendation**: Takes in data and suggests the appropriate statistical test.
- **Test Criteria Considered**:
  - Normality (Shapiro-Wilk Test)
  - Equality of Variances (Levene's Test)
  - Paired vs. Unpaired data
- **Supports Parametric and Non-Parametric Tests**.

## Installation 🛠️

You can install the `choose_stat_test` package directly from GitHub using the `devtools` package:

```r
# Install devtools if you don't have it
install.packages("devtools")

# Install the package from GitHub
devtools::install_github("mali8308/choose_stat_test")

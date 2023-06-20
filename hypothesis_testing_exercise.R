# Hypothesis Testing Exercise

#### DO NOT CHANGE

# Run Setup Commands
source("setup.R")

# Load the required libraries
suppressPackageStartupMessages(library(tidyverse))
suppressPackageStartupMessages(library(dslabs))

#### DO NOT CHANGE

# In this exercise, you will apply your knowledge of hypothesis testing using t-tests and ANOVAs in R. Complete the code chunks below to generate the results.


# T-Tests -----------------------------------------------------------------


# A t-test is used to compare the means of two groups. In this example, we will compare the heights of males and females.

### Step 1: Data Preparation

# First, load the Heights dataset.
# This dataset has heights for males and females.
# Find more about it by running `?heights`
data(heights)

# Assign the heights of males to the variable 'male_heights'
male_heights <- "..."

# Assign the heights of females to the variable 'female_heights'
female_heights <- "..."

# Conduct the t-test using the 't.test()' function
t_test_result <- "..."

# View the t-test result
if (interactive()) {
  t_test_result
}

#### DO NOT CHANGE

# Output the results for tests
output_t_test(t_test_result)

#### DO NOT CHANGE


# ANOVA -------------------------------------------------------------------

# ANOVA (Analysis of Variance) is used to compare means across multiple groups. In this example, we will compare the performance of students from three different schools.

# Step 1: Data Preparation

# Create a dataset called student_scores with the scores of students from three schools.

# Create the student_scores dataset
student_scores <- data.frame(
  school = rep(c("A", "B", "C"), each = 10),
  score = c(
    78,
    82,
    79,
    85,
    88,
    90,
    75,
    80,
    81,
    86,
    65,
    70,
    72,
    75,
    78,
    80,
    68,
    70,
    75,
    77,
    90,
    95,
    92,
    85,
    88,
    92,
    85,
    90,
    94,
    88
  )
)

# Step 2: Conducting the ANOVA

# To conduct an ANOVA, use the aov() function with the appropriate formula.

# Conduct the ANOVA using the 'aov()' function
anova_result <- "..."

# View the ANOVA result
if (interactive()) {
  anova_result
  summary(anova_result)
}

# Viewing the Pairwise differences
tukeys_hsd_result <- "..."

# View the Tukey's HSD result
if (interactive()) {
  tukeys_hsd_result
}

#### DO NOT CHANGE

# Output the results for tests
if (!interactive()) {
  output_aov(anova_result)
  output_tukey(tukeys_hsd_result)
}
#### DO NOT CHANGE


# Chi-Square --------------------------------------------------------------

# A chi-square test is used to determine if there is an association between two categorical variables. In this example, we will examine the relationship between smoking status and lung disease.

# Step 1: Data Preparation
# Load the lung_disease dataset.

treatment <- get_chisq_data() # DO NOT CHANGE THIS LINE

# Step 2: Conducting the Chi-Square Test

# To conduct a chi-square test, create a contingency table of the variables and use the chisq.test() function.

# Create a contingency table of smoking status and lung disease
contingency_table <- "..."

# View the contingency table
if (interactive()) {
  contingency_table
}

# Conduct the chi-square test using the 'chisq.test()' function
chi_square_result <- "..."

# View the chi-square test result
if (interactive()) {
  chi_square_result
}

#### DO NOT CHANGE

# Output the results for tests
if (!interactive()) {
  output_chi_square(chi_square_result)
}

#### DO NOT CHANGE

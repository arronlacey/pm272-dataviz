install.packages("GGally")
install.packages("NHANES")

library(tidyverse)
library(GGally)
library(readr)
library(NHANES)

# Load NHANES data
data("NHANES")

View(NHANES)


# Create a sub-table that only has BMI, Age, Gender and Cholesterol

health_data <- NHANES %>% select(BMI,Age,Gender,TotChol)


# Create a historgram of BMI using ggplot

ggplot(health_data, aes(x = BMI)) +
  geom_histogram(binwidth = 1, fill = "skyblue", colour = "black") +
  labs(title = "Mean height in Wales is higher than European Average") +
  theme_minimal()








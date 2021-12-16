# 0. Packages --------
library(dplyr)
library(moderndive)
library(tidyverse)


# 1. Exploratory Data Analysis (EDA) ------------

## 1.1. Looking at the data ----------
glimpse(evals)

## 1.2. Creating Visualizations ----------
evals %>% 
  ggplot(aes(x = score)) +
  geom_histogram(binwidth = 0.25, color = "black") +
  labs(x = "teaching score", y = "count")

## 1.3. Computing summary statistics ----------
evals %>% 
  summarize(mean_score = mean(score),
            median_score = median(score),
            sd_score = sd(score))

# 2. Background on modeling for prediction ---------

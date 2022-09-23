#Alani Williams, September 23
#In Class Assignment 2

PATH <- "https://raw.githubusercontent.com/guru99-edu/R-Programming/master/poisons.csv"
#
df <- read.csv(PATH) 
#
library(ggplot2)

# Plots the time vs poison vs treat data
ggplot(df, aes(x = poison, y = time,z = treat, fill = poison)) + geom_boxplot() + geom_jitter(shape = 15, color = "steelblue", position = position_jitter(0.21)) + theme_classic()
>% mutate(poison = factor(poison, ordered = TRUE)) glimpse(df)
#
anova_one_way <- aov(time~poison * treat, data = df) 
#
summary(anova_one_way)


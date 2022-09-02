#Alani Williams, September 2, 2022

library("ggpubr")

#Loading sample data
my_data <- mtcars
head(my_data)

ggscatter(my_data, x = "mpg", y = "wt", add = "reg.line", conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson", xlab = "Miles/(US) gallon", ylab = "Weight (1000 lbs)")

res <- cor.test(my_data$wt, my_data$mpg, method = "pearson") 
res

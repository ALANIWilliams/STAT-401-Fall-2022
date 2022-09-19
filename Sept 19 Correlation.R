#Alani Williams, September 19, 2022

library("ggpubr")

#Loading sample data
my_data <- mtcars
head(my_data)

ggscatter(my_data, x = "gear", y = "disp", add = "reg.line", conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson", xlab = "Gear", ylab = "Disp")

res <- cor.test(my_data$disp, my_data$gear, method = "pearson") 
res

#Alani Williams, November 2, 2022

data_frame <- read.csv("https://goo.gl/j6lRXD")

data_frame

table(data_frame$treatment, data_frame$improvement)
#                 improved not-improved
#  not-treated       26           29
#  treated           35           15

#without corrections

chisq.test(data_frame$treatment, data_frame$improvement, correct=FALSE)
#X-squared = 5.5569, df = 1, p-value = 0.01841

#with corrections

chisq.test(data_frame$treatment, data_frame$improvement)
#X-squared = 4.6626, df = 1, p-value = 0.03083 

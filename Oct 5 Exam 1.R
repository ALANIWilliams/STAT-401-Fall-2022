#Alani Williams,October 5, 2022
#Exam 1

#Calculate T-test on given data

x = c(1000,230,12333,3455,23,12,3,4,45,56,78) 

y = c(1,2,3,4,5,6,7,8,9,10,11) 

# Visualize/Plot the points in variables x and y

pts = seq(-4.5,4.5,length=100)
plot(pts,dt(pts,df=9),col='red',type='l')

# Plot x and y points on reference plot
lines(density(x), col='green')
lines(density(y), col='blue')

# Perform T test to check if there is a significant difference between x and y variables

t.test(x,y)

# Null hypothesis: No difference between x and y.
# Alternate hypothesis: There is a significant difference between x and y. (p<0.05)

# Result: Reject the null hypothesis; Accept the alternate hypothesis.

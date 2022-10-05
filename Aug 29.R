#Alani Williams, August 29, 2022
#Calculate T-test on dummy data
# Create some dummy data
x = rnorm(10)
y = rnorm(10)

# Visualize/Plot the points in variables x and y

pts = seq(-4.5,4.5,length=100)
plot(pts,dt(pts,df=9),col='red',type='l')

# Plot x and y points on reference plot
lines(density(x), col='green')
lines(density(y), col='blue')

# Perform T test to check if there is a significant difference between x and y variables
ttest = t.test(x,y)

# Null hypothesis: No difference between x and y.
# Alternate hypothesis: There is a significant difference between x and y. (p<0.05)

# Result: Accept the null hypothesis; Reject the alternate hypothesis.

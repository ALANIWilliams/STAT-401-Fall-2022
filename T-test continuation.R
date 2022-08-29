#Alani Williams, August 29, 2022
#Calculate T-test on dummy data

#create dummy data
x = rnorm(10);
y = rnorm(10)

#Visualize the pints in variable x and y
pts = seq(-4.5,4.5,length=100)
plot(pts,dt(pts,df=9),col='red',type='l')

#Plot x and y values on refernce plot
lines(density(x), col='green')
lines(density(y), col='blue')

#Perform t test to check if there is a significant difference between x and y variable
ttest = t.test(x,y)
ttest

#Null hypothesis: No difference between x and y
#Alternate hypothesis: Significant difference between x and y

##Result: Null hypothesis

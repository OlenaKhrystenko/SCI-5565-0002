install.packages("ISLR2")
#10
library("ISLR2")
Boston
?Boston
#There are 506 rows and 13 columns in this data set
#The rows represent a set of houses in Boston
#the columns represent different characteristics of a particular house
#10b
pairs(Boston)
#higher tax means the higher price of the house => larger crime rate in 
#more expensive neighborhoods
plot(Boston$crim, Boston$tax)
#a number of rooms is bigger in residential areas where parents with
#children live. This means that the number of rooms correlates with 
#pupil-teacher ratio
plot(Boston$rm, Boston$ptratio)
#tax correlates with an age of a house
plot(Boston$tax, Boston$age)
#10c
#the older houses in the neighborhood, the higher crime rate
plot(Boston$age, Boston$crim)
#the higher tax rate, the higher crime rate
plot(Boston$tax, Boston$crim)
#the close to radial roads, the higher crime rate
plot(Boston$rad, Boston$crim)
#10d
#regarding the crime rate, it is not high in the majority of the areas
par(mfrow=c(1,3))
hist(Boston$crim[Boston$crim > 1], breaks = 25)
#the lowest value of the tax rate is 222, the highest value is 469
#what is twice as much
hist(Boston$tax, breaks = 25)
#pupil-teacher ratio is not high and varies between 15 and 21
hist(Boston$ptratio, breaks = 25)
#10e
dim(subset(Boston, chas == 1))
#35 areas
#10f
median(Boston$ptratio)
#median = 19.05
#10g
median(Boston$crim)   #0.25651
median(Boston$zn)     #0
median(Boston$indus)  #9.69
median(Boston$chas)   #0
median(Boston$nox)    #0.538
median(Boston$rm)     #6.2085
median(Boston$age)    #77.5
median(Boston$dis)    #3.20745
median(Boston$rad)    #5
median(Boston$tax)    #330
median(Boston$ptratio)#19.05
median(Boston$lstat)  #11.36
median(Boston$medv)   #21.2
t(subset(Boston, medv == min(Boston$medv)))
#crim   high value
#zn     min
#indus  low enough
#chas   min
#nox    min
#rm     very low
#age    high
#dis    min
#rad    in first quarter
#tax    greater than half
#ptratio in first quarter
#lstat  border of 1st and 2nd quarter
#medv   low
#This area has a high level of a crime rate, high level of old houses,
#high level of the tax rate. This indicates that this area is not good
#for living.
summary(Boston)
#10g
dim(subset(Boston, rm > 7))
dim(subset(Boston, rm > 8))
#There are 64 houses with more than 7 rooms
#There are 13 houses with more that 8 rooms
summary(subset(Boston, rm > 8))
summary(Boston)
#The houses where more than 8 rooms are mostly older houses
#located in the areas with relatively low 
#crime rate. Tax rates vary from lowest to highest.
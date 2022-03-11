#9
Auto = read.csv("Auto.csv", na.strings = "?", stringsAsFactors = T)
Auto = na.omit(Auto)
dim(Auto)
summary(Auto)
#9.a
#Quantitative predictors:
#mpg, cylinders, displacement, horsepower, weight, acceleration, year
#Qualitative predictors:
#name, origin
#9.b
sapply(Auto[, 1:7], range)
#9.c
sapply(Auto[, 1:7], mean)
sapply(Auto[, 1:7], sd)
#9.d
Auto_1 = Auto[-(10:85),]
dim(Auto_1) == dim(Auto) - c(76,0)
Auto_1[9,] == Auto[9,]
Auto_1[10,] == Auto[86,]
sapply(Auto_1[, 1:7], range)
sapply(Auto_1[, 1:7], mean)
sapply(Auto_1[, 1:7], sd)
#9.e
pairs(Auto)
#the more horsepower, the less mpg
plot(Auto$mpg, Auto$horsepower)
#the bigger weight, the less mpg
plot(Auto$mpg, Auto$weight)
#bigger acceleration, bigger mpg
plot(Auto$mpg, Auto$acceleration)
#9.f
#These plots indicate that gas mileage could be predicted
#on basis of the other variables. For example,
#the more years a car is used, the bigger mileage it has.
#the bigger horsepower, the less mileage.
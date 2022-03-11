#8
Auto = read.csv("Auto.csv", na.strings = "?", stringsAsFactors = T)
summary(Auto)
View(Auto)
#8a
lm.fit <- lm(Auto$mpg ~ Auto$horsepower)
summary(lm.fit)
#I
#Yes. There is a relationship between the predictor (horsepower) and 
#the response (mpg). The less horsepower, the more mpg.
#In this case we can reject the null-hypothesis and accept
#the alternative hypothesis, which will show that horsepower and mpg
#are interconnected.
#II
#In order to calculate the RSE of the response, we need to calculate
#the mean of mpg. Mean(mpg) = 23.52. The RSE calculated by lm()-function
#is 4.906. R^2 = 0.6059
#III
#The relationship between horsepower and mpg is negative, since
#the bigger horsepower, the less mpg.
#IV
Auto = na.omit(Auto)
predict(lm.fit, data.frame(horsepower = c(98)), interval="confidence")
predict(lm.fit, data.frame(horsepower=c(98)), interval="prediction")
#8b
plot(Auto$horsepower, Auto$mpg)
abline(lm.fit)
#8c
par(mfrow=c(2,2))
plot(lm.fit)

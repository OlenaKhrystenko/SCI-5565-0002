#9
Auto = read.csv("Auto.csv", na.strings = "?", stringsAsFactors = T)
summary(Auto)
#9a
pairs(Auto)
#9b
cor(subset(Auto, select = -name))
#9c
lm.fit <- lm(mpg ~ . -name, data = Auto)
summary(lm.fit)
#I
#Yes. There is a relationship between the predictors and the response (mpg)
#Since p-value is very small and F-statistic is >1, we reject the null
#hypothesis and conclude the relationship between response and predictors.
#II
#Weight, year, origin, and displacement have statistically significant 
#relationship to the response. Whereas cylinders, acceleration, and horsepower
#are not statistically significant.
#III
#The coefficient for the year variable is 0.750773. It means that every year
#mpg increases by 0.750773, and becomes more efficient.
par(mfrow = c(2, 2))
plot(lm.fit)
#As we can see from the plot, the fit is not accurate.If we look at the plot
#leverage, we can see that a point 14 has high leverage but not high residual.
par(mfrow = c(1, 1))
plot(predict(lm.fit), rstudent(lm.fit))
#Values greater than 3 indicate outliers.
#9e
lm.fit = lm(Auto$mpg ~ Auto$cylinders * Auto$displacement + Auto$displacement * Auto$weight)
summary(lm.fit)
#Interaction between displacement and weight is statistically significant,
#Interaction between cylinders and displacement is not significant.
#9f
lm.fit = lm(Auto$mpg ~ log(Auto$weight) + sqrt(Auto$horsepower) + Auto$acceleration + I(Auto$acceleration^2))
summary(lm.fit)
par(mfrow = c(2, 2))
plot(lm.fit)
par(mfrow = c(1, 1))
plot(predict(lm.fit), rstudent(lm.fit))
#comment!
lm.fit = lm(Auto$mpg ~ Auto$weight + log(Auto$horsepower) + Auto$acceleration + I(Auto$acceleration^2))
summary(lm.fit)
par(mfrow = c(2, 2))
plot(lm.fit)
par(mfrow = c(1, 1))
plot(predict(lm.fit), rstudent(lm.fit))
#comment!
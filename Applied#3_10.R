#10
library("ISLR2")
Carseats
?Carseats
summary(Carseats)
#10a
lm.fit = lm(Carseats$Sales ~ Carseats$Price + Carseats$Urban + Carseats$US)
summary(lm.fit)
#10b
#Price. The linear regression indicates relationship between price and sale.
#This relationship is negative as we can say from the negative coefficient. 
#p-value is low. Sales decrease as price increases.
#Urban. p-value is high, what means that there is no relationship between 
#sales and locations of the stores.
#US. p-value is low, what indicates a relationship between US and sales.
#This relationship is negative, since if the store is in the US, sales
#increase and vice versa.
#10c
#Sales = 13.043469 + -0.054459 Price + -0.021916 Urban + 1.200573 US
#10d
lm.fit = lm(Carseats$Sales ~ Carseats$Price + Carseats$US)
summary(lm.fit)
#we can reject null hypothesis for price and US since p-values are small
#10e
#Both of them fit data the same way.
#10f
confint(lm.fit)
#10g
plot(predict(lm.fit), rstudent(lm.fit))
#All studentized residuals are bounded by -3 to 3, and this means that there
#are no potential outliers suggested from the linear regression.
par(mfrow=c(2, 2))
plot(lm.fit)

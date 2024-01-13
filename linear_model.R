


data("co2")

# error term
#   1. measurement error 
#   2. lack of knowledge or other inflences
#   3. etc. 
# 
# assumptions
#   1. normally distributed with average zero 
#   2. same variance (homoscedastic)
#   3. independent across observations 
  
plot(co2)
co2.linear.model = lm(co2~time(co2))
co2.linear.model
abline(co2.linear.model)

co2.residuals = resid(co2.linear.model)
co2.residuals

hist(co2.residuals)

qqnorm(co2.residuals)
qqline(co2.residuals)


plot(co2.residuals~time(co2))

plot(co2.residuals~time(co2),xlim=c(1960,1963))

help(sleep)

sleep

plot(extra~group,data = sleep)

attach(sleep)
extra.1 = extra[group==1]
extra.2 = extra[group==2]

t.test(extra.1,extra.2,paired = TRUE,alternative = 'two.sided')




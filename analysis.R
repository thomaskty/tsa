
# install.packages('faraway')

library(faraway)
data(package='faraway')
data("coagulation")
ls()
coagulation
typeof(coagulation)
data("worldcup")
ls()


worldcup
mean(worldcup$Time)
round(mean(worldcup$Time),2)

plot(coag~diet,data = coagulation)


data.1 = c(35,8,10,23,42)
data.1
print(data.1)
summary(data.1)

# sample mean and sample standard deviation
mean(data.1)
sd(data.1)

# histogram 
small.size.dataset=c(
  91,49,76,112,97,42,70, 100, 8, 112, 95, 90, 78, 62, 56, 94, 65, 58,
  109, 70, 109, 91, 71, 76, 68, 62, 134, 57, 83, 66
)
typeof(small.size.dataset)
typeof(data.1)
hist(small.size.dataset)

hist(
  small.size.dataset,
  xlab='data points',
  main='histogram',
  ylab='probability',
  freq=F
)

density(small.size.dataset)
line(density(small.size.dataset))
lines(density(small.size.dataset),lwd=3)

hist(
  small.size.dataset,
  xlab='data points',
  main='histogram',
  ylab='probability',
  freq=F,
  breaks = 10
)


set.seed= 120
test_1_scores = round(rnorm(n=50,mean=75,sd=10))
test_2_scores = round(rnorm(n=50,mean=78,sd= 14))
test_1_scores
test_2_scores


plot(test_1_scores~test_2_scores)


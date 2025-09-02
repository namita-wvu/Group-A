install.packages("ISLR")
library(ISLR)
dim (College)
help(College)
apps<-College$Apps
head(College)

#Problem 1

# running a bootstrap confidence interval for the apps variable using 1000 bootstrap samples
install.packages ("dplyr")
library (dplyr)
set.seed (1900)
boots <- NULL
for(i in 1:1000) {
  meanApps <- apps%>%sample(size = 1000,replace=TRUE)%>%mean()
  boots <- c(boots,meanApps)
}
boots%>%hist(main="Sample Distribution for Mean Apps")

# now creating the intervals for 80% confidence interval
quantile(boots, c(.1,.9))

#Problem 2

#random seed 1
set.seed (2016)
boots <- NULL
for (i in 1:1000) {
  meanApps <-apps%>%sample(size = 1000,replace=TRUE)%>%mean()
  boots <- c(boots,meanApps)
}
boots%>%hist(main="Sample Distribution for Mean Apps")

# now creating the intervals for 80% confidence interval for seed 1
quantile(boots, c(.1,.9))

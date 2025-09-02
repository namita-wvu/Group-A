install.packages("ISLR")
library("ISLR")
dim(College)

#Question 1, Chose a (Store each bootstrap sample in a list and then calculate the mean after all samples have been taken using the sapply function )
apps<- College$Apps
set.seed(1)
boot_samples<-lapply(1:1000,function(i) sample(apps, replace=TRUE))
View(boot_samples)
boot_mean<-sapply(boot_samples,mean)
ci80<- quantile(boot_mean,probs = c(.1,.9))
View(ci80)
#Intrepretation of the 80% confidence interval 
#in a bootstrap randomly populated sample of 1000
#the lower 10% of the mean of samples is at 2828.967 (for the numbers it ran when I generated it, It ill have to be adjusted before submission)
#the higher 10% of the mean of samples is at 3183.604 (Ditto to above)
#80% of the means of the sample reside between 2828.967 and 3183.604
#If we need to add a histogram I can add another line of code to do so, I just pulled the numbers from view

#Question 2 

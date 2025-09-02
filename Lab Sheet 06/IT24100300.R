setwd("C:\\Users\\ASUS\\Desktop\\IT24100300")
#Q1

#part 1
#50 independent students, each with probability 0.85 of passing;X counts the number of passes.

#part 2
1-pbinom(46,50,0.85,lower.tail=TRUE)

#Q2

#part 1
#X=the number of customer calls received by the call center in one hour.

#part 2
#The distribution of X is a Poisson distribution with mean 12.

#part 3
x<-15
lambda<-12

dpois(x,lambda)


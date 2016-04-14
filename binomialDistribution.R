## Binomial Distribution

## The binomial distribution is a discrete probability distribution.
## It describes the outcome of n independent trials in an experiment.
## Each trial is assumed to have only two outcomes, either success or failure.
## If the probability of a successful trial is p,
## then the probability of having x successful outcomes in an experiment of n independent trials is as follows.
## ( ) n x (n??? x) f(x) = x p (1??? p) where x = 0,1,2,...,n

## Problem:
## Suppose there are 12 multiple choice questions in an English class quiz.
## Each question has 5 possible answers, and only 1 of them is correct.
## Find the probability of having 4 or fewer correct answers if a student attempts to answer every question at random.

## Solution:
## Since only 1 out of 5 possible answers is correct,
## the probability of answering a question correctly by random is 1/5 = 0.2
## We can find the probability of having exactly 4 correct answers by random attempts as follows. 

dbinom(4, size=12, prob=0.2)


## To find the probability of having four or less correct answers by random attempts,
## we apply the function dbinom with x = 0,.,4.

dbinom(0, size=12, prob=0.2) + 
  + dbinom(1, size=12, prob=0.2) + 
  + dbinom(2, size=12, prob=0.2) + 
  + dbinom(3, size=12, prob=0.2) + 
  + dbinom(4, size=12, prob=0.2)


##  alternatively, we can use the cumulative probability function for binomial distribution pbinom. 
pbinom(4, size=12, prob=0.2)


## Answer:
## The probability of four or less questions answered correctly by random
## in a 12 question multiple choice quiz is 92.7%.

help(pbinom)


ans <- dbinom(0:4, size = 12, prob = 0.2)
anssum(ans)

1 - sum(dbinom(0:6, size = 12, prob = 0.2))



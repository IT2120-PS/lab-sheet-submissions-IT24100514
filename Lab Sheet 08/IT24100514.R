setwd("C:\\Users\\PC\\Desktop\\IT24100514_PS_LAB_08")
getwd()

data <- read.table("Data - Lab 8.txt",header=TRUE)
fix(data)
attach(data)

popmn <- mean(Nicotine)
popmn

popvar <- var(Nicotine)
popvar

samples <- c()
n <- c()

for(i in 1:30){
  
  s<- sample(Nicotine,5,replace=TRUE)
  samples <- cbind(samples,s)
  n <- c(n,paste('S',i))
  
  
  
}
samples
n

colnames(samples)=n
samples


s.means <- apply(samples,2,mean)
s.vars <- apply(samples,2,var)
s.means
s.vars

samplemean <- mean(s.means)
samplevars <- var(s.means)

samplemean
samplevars

popmn
samplemean

truevar=popvar/5

truevar
samplevars


#Exercise


data <- read.table("Exercise - LaptopsWeights.txt",header=TRUE)

fix(data)
attach(data)

weights <- data$Weight
   

pop_mean <- mean(weights)
pop_sd   <- sd(weights) 
pop_sd_population <- sqrt(sum((data - pop_mean)^2) / length(data))  

cat("Population Mean:", pop_mean, "\n")
cat("Population SD:", pop_sd_population, "\n")

set.seed(123) 
sample_means <- numeric(25)
sample_sds   <- numeric(25)

for (i in 1:25) {
  samp <- sample(weights, size = 6, replace = TRUE)
  sample_means[i] <- mean(samp)
  sample_sds[i]   <- sd(samp)   # sample SD
}

mean_of_sample_means <- mean(sample_means)
sd_of_sample_means   <- sd(sample_means)

cat("Mean of Sample Means:", mean_of_sample_means, "\n")
cat("SD of Sample Means:", sd_of_sample_means, "\n")


cat("Population Mean vs Mean of Sample Means:", pop_mean, "vs", mean_of_sample_means, "\n")
cat("Population SD vs SD of Sample Means:", pop_sd_population, "vs", sd_of_sample_means, "\n")








#calculation
6+3
12/2

#Data and data vector
grade <- 90
grade
grade <- c(95,58,100)
grade

name <- c("Priya","Siya","Riya")
name

#Data Frame
mydata <- data.frame(name,grade)
mydata

#Functions
dim(mydata)
str(mydata)#structure
summary(mydata)

#Directory and files
getwd()
setwd("path")
write.csv(mydata,"myfile.csv")
myfile <- read.csv("myfile.csv",header = TRUE)
data
View(myfile)

#Data present in RStudio
data()
str(iris)
summary(iris)
head(iris)
tail(iris)
head(iris[1:3,1:2])
head(iris[1:3,])
head(iris,3)

#Quantitative :Bar plot
t<-table(iris$Species)
t
barplot(t)
barplot(t,main="Species Bar plot",xlab="Species",ylab="Frequency",col=rainbow(3))

pie(t)
pie(t,main="Pie chart")
hist(iris$Sepal.Length)
hist(iris$Sepal.Length,main="Histogram of Sepal Length",xlab = "Sepal Length" , col="green",breaks=15)
plot(iris$Sepal.Length,iris$Sepal.Width,col="blue")
pairs(iris)

#Packages
library(psych)
pairs.panels(iris)

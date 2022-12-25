data("iris")
str(iris)
summary(iris)
# partition data
set.seed(111)
ind <- sample(2,nrow(iris),replace = TRUE, prob = c(0.8,0.2))
training <- iris[ind ==1, ]
testing <- iris[ind ==2,]
# scatter plots and correlation
library(psych)
pairs.panels(training[,-5],
             gap = 0,
             bg = c("red","yellow","blue")[training$Species],
             pch=21)
#pca
pc <- prcomp(training[,-5],
             center = TRUE,
             scale = TRUE)
attributes(pc)
pc$center
pc$sdev
mean(training$Sepal.Width)
print(pc)
summary(pc)

#orthogonality of PC
pairs.panels(pc$x,
             gap = 0,
             bg = c("red","yellow","blue")[training$Species],
             pch=21)
biplot(pc)

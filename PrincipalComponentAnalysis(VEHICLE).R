vehicle=read.csv('files/vehicle.csv')
str(vehicle)
summary(vehicle)
# partition data
set.seed(111)
ind <- sample(2,nrow(vehicle),replace = TRUE, prob = c(0.8,0.2))
training <- vehicle[ind ==1, ]
testing <- vehicle[ind ==2,]
# scatter plots and correlation
library(psych)
pairs.panels(training[,-7],
             gap = 0,
             bg = c("red","yellow","blue")[training$lh],
             pch=21)
#pca
pc<-prcomp(training[,-7],
             center = TRUE,
             scale. = TRUE)
attributes(pc)
pc$center
pc$sdev
mean(training$lh)
print(pc)
summary(pc)

#orthogonality of PC
pairs.panels(pc$x,
             gap = 0,
             bg = c("red","yellow","blue")[training$lh],
             pch=21)
biplot(pc)

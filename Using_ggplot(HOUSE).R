library(ggplot2)
ggplot(data=iris,aes(x=Petal.Length,y=Sepal.Length))
ggplot(data=iris,aes(x=Petal.Length,y=Sepal.Length))+geom_point()
ggplot(data=iris,aes(x=Petal.Length,y=Sepal.Length,shape=Species))+geom_point()
ggplot(data=iris,aes(x=Petal.Length,y=Sepal.Length,col=Species,shape=Species))+geom_point()

#House dataset
read.csv("files/House_Records.csv")->house
View(house)
library(dplyr)
house %>% select(c(-1))->house
View(house)

#Plotting Histogram
ggplot(data=house,aes(x=Price))+geom_histogram()
ggplot(data=house,aes(x=Price))+geom_histogram(bins=50)
ggplot(data=house,aes(x=Price))+geom_histogram(bins=50,fill="palegreen4")
ggplot(data=house,aes(x=Price))+geom_histogram(bins=50,fill="palegreen4",col="green")

#using fill as the aesthetic
ggplot(data=house,aes(x=Price,fill=air_cond))+geom_histogram()
ggplot(data=house,aes(x=Price,fill=air_cond))+geom_histogram(position="fill")

#Barplot
ggplot(data=house,aes(x=waterfront))+geom_bar()

#waterfront-Aircond
ggplot(data=house,aes(x=waterfront,fill=air_cond))+geom_bar(Position="fill")

#waterfront -sewer
ggplot(data=house,aes(x=waterfront,fill=sewer))+geom_bar(Position="fill")

#frequency-Polygon
ggplot(data=house,aes(x=Price))+geom_freqpoly()
ggplot(data=house,aes(x=Price))+geom_freqpoly(bins=60)
ggplot(data=house,aes(x=Price,col=air_cond))+geom_freqpoly(bins=60)

#Box-plot
ggplot(data=house,aes(x=factor(room),y=Price))+geom_boxplot()
ggplot(data=house,aes(x=factor(room),y=Price,fill=factor(room)))+geom_boxplot()
ggplot(data=house,aes(x=factor(room),y=Price,fill=air_cond))+geom_boxplot()
ggplot(data=house,aes(x=factor(room),y=Price,fill=sewer))+geom_boxplot()

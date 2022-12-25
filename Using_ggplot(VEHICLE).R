read.csv("files/vehicle.csv")->vehicle
View(vehicle)

library(ggplot2)
#Plotting Histogram
ggplot(data=vehicle,aes(x=lc))+geom_histogram()
ggplot(data=vehicle,aes(x=lc))+geom_histogram(bins=50)
ggplot(data=vehicle,aes(x=lc))+geom_histogram(bins=50,fill="palegreen4")
ggplot(data=vehicle,aes(x=lc))+geom_histogram(bins=50,fill="palegreen4",col="green")

#using fill as the aesthetic
ggplot(data=vehicle,aes(x=mc,fill=State))+geom_histogram()
ggplot(data=vehicle,aes(x=mc,fill=State))+geom_histogram(position="fill")

#Barplot
ggplot(data=vehicle,aes(x=lh))+geom_bar()

#waterfront-Aircond
ggplot(data=vehicle,aes(x=lh,fill=State))+geom_bar(Position="fill")

#waterfront -sewer
ggplot(data=vehicle,aes(x=lh,fill=mc))+geom_bar(Position="fill")

#frequency-Polygon
ggplot(data=vehicle,aes(x=lc))+geom_freqpoly()
ggplot(data=vehicle,aes(x=lc))+geom_freqpoly(bins=60)
ggplot(data=vehicle,aes(x=lh,col=State))+geom_freqpoly(bins=60)

#Box-plot
ggplot(data=vehicle,aes(x=factor(State),y=lc))+geom_boxplot()
ggplot(data=vehicle,aes(x=factor(State),y=lc,fill=factor(State)))+geom_boxplot()
ggplot(data=vehicle,aes(x=factor(fm),y=mc,fill=State))+geom_boxplot()

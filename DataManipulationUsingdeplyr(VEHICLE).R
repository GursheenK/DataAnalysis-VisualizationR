library(dplyr)
read.csv('files/vehicle.csv',header=TRUE)->vehicle
#select
select(vehicle,fm,lc)
head(select(vehicle,Mileage,lc))
head(select(vehicle,-mc))
head(select(vehicle,fm:lc))
head(select(vehicle,2:4))
head(select(vehicle,starts_with("l")))


#Filter
head(filter(vehicle,fm==11))
head(filter(vehicle,fm<13 & lc==3.1))
head(filter(vehicle,fm<13 | lc==2))
head(filter(vehicle,fm %in% c(12,13)))


#arrange(order by)
arrange(vehicle,fm)
arrange(vehicle,desc(fm))

#summarise 
summarise(vehicle,mean(lc))
summarise(vehicle,min(lc))
summarise(vehicle,max(lc))
summarise(vehicle,last(lc))



#group_by
deptno<-c(10,20,10,10,20,30,40,30,20,40)
name<-c("a","b","C","d","e","f","g","h","i","j")
sal<-c(1000,2000,4000,3000,2500,1500,6000,7000,8000,4900)
emp<-data.frame(deptno,name,sal)
summarise(group_by(emp,deptno),m=mean(sal),total=n())

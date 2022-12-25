library(dplyr)
read.csv('files/Students.csv',header=TRUE)->student

#select
select(student,Rollno.,Name)
head(select(student,-seatno.))
head(student)
head(select(student,1:3))


#Filter
head(filter(student,subj2==90))
head(filter(student,subj1==80 & subj3==70))

#arrange(order by)
arrange(student,subj1)

#summarise 
summarise(student,mean(subj1))
summarise(student,min(subj1))
summarise(student,max(subj1))

summarise(student,mean(subj2))
summarise(student,min(subj2))
summarise(student,max(subj2))

summarise(student,mean(subj3))
summarise(student,min(subj3))
summarise(student,max(subj3))

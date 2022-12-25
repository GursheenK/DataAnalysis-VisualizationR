gender=c('F','M','M','M','F','F','M','F','M','F','F','M','M','F','M','M','M','F','F','F')
height=c(163,190,170,181,170,169,176,180,167,167,161,164,167,165,166,172,178,181,176,165)
weight=c(55,60,57,61,57,62,70,65,77,66,61,75,78,65,62,59,57,51,50,53)
Person=data.frame(gender,height,weight)
Person
library(rpart)
tree=rpart(height~gender+weight,data=Person,control=rpart.control(minsplit=1,minbucket=1,cp=0))
plot(tree)
text(tree)
a=data.frame(gender=c('M'),weight=c(75))
result=predict(tree,a)
print(result)

tree=rpart(gender~height+weight,data=Person,control=rpart.control(minsplit=1,minbucket=1,cp=0))
plot(tree)
text(tree)
b=data.frame(height=c(190),weight=c(85))
result=predict(tree,b)
print(result)

age=c(40,45,50,55,50,
      49,46,39,42,43,
      35,37,38,44,42,
      27,51,53,36,47)
marital_status=c('Married','Married','Married','Married','Married',
                 'Married','Married','Married','Not Married','Married',
                 'Married','Not Married','Married','Married','Married',
                 'Married','Married','Married','Married','Married')
no_ch=c(1,2,3,4,4,
        3,2,1,0,2,
        1,0,2,2,3,
        0,4,4,1,2)
loan_status=c('Not Approved','Not Approved','Approved','Approved','Approved',
              'Approved','Not Approved','Approved','Not Approved','Approved',
              'Approved','Not Approved','Approved','Approved','Approved',
              'Approved','Approved','Approved','Not Approved','Not Approved')
Loan=data.frame(age,marital_status,no_ch,loan_status)
Loan
tree=rpart(loan_status~age+no_ch,data=Loan,control=rpart.control(minsplit=1,minbucket=1,cp=0))
plot(tree)
text(tree)
a=data.frame(age=c(52),no_ch=c(4))
result=predict(tree,a)
print(result)

tree=rpart(loan_status~age+marital_status,data=Person,control=rpart.control(minsplit=1,minbucket=1,cp=0))
plot(tree)
text(tree)
b=data.frame(age=c(25),marital_status=c('Married'))
result=predict(tree,b)
print(result)
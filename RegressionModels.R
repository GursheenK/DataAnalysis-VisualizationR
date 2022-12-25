x=c(5.5,6.4,5.7,6.8,4.8,5.2,5.3,5.8,6.5)
y=c(45,70,50,55,43,51,57,60,69)
relation=lm(y~x)
print(relation)
print(summary(relation))
a <- data.frame(x = 6.3)
result <- predict(relation,a)
print(result)
b <- data.frame(x = 5.4)
result <- predict(relation,b)
print(result)
plot(y,x,col = "blue",main = "Height & Weight Regression",abline(lm(x~y)),cex = 1.3,pch = 16,xlab = "Weight",ylab = "Height")

x=c(243,355,450,412,389,230,138,323,249,300)
y=c(2.4,3.6,4.5,4.2,3.9,2.2,1.3,3.2,2.4,3)
relation=lm(y~x)
print(relation)
print(summary(relation))
a <- data.frame(x = 350)
result <- predict(relation,a)
print(result)
b <- data.frame(x = 245)
result <- predict(relation,b)
print(result)
plot(y,x,col = "blue",main = "Marks and Grade Regression",abline(lm(x~y)),cex = 1.3,pch = 16,xlab = "Marks",ylab = "Grade")


input <- mtcars[,c("mpg","disp","hp","wt")]
print(head(input))
input <- mtcars[,c("mpg","disp","hp","wt")]
model <- lm(mpg~disp+hp+wt, data = input)
print(model)
cat("# # # # The Coefficient Values # # # ","\n")
a <- coef(model)[1]
print(a)
Xdisp <- coef(model)[2]
Xhp <- coef(model)[3]
Xwt <- coef(model)[4]
print(Xdisp)
print(Xhp)
print(Xwt)

model1 = lm(dist~speed, data = cars)
plot(dist ~ speed, data = cars,
     xlab = "Speed (in Miles Per Hour)",
     ylab = "Stopping Distance (in Feet)",
     main = "Stopping Distance vs Speed",
     pch = 20,
     cex = 2,
     col = "blue")
abline(model1, lwd = 3, col = "green")
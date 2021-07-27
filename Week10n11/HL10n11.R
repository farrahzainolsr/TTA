print("hello world")
name <- readline("Enter your name: ")
hello <- paste("Welcome" , name, "!")
print(hello)
age <- readline("What is your age: ")
j <- 20:50
k <- 20:60
meank <- mean(k)
ls(k)
ls()
l <- 51:91
suml <- sum(l)
floor(runif(10, min=-50, max=51))
random <- floor(runif(10, min=-50, max=51))
seq <- c(100,200,300)
for (val in seq) {
  print(paste("loop number =", val))
}
a <- c(1,2,3,4,5)
b <- c(2,4,6,8,10)
c <- c(15,10,5,1,-5)

num = cbind(a,b,c)

df <- data.frame(matrix(ncol = 5, nrow = 0))
tt <- c("Name", "Age", "Gender", "Role", "Length of Service")
colnames(df) <- tt
print(tt)

Name <- c("farrah", "Dilla", "Zainol", "Eva", "Rose")
Age <- c(34, 50, 44, 47, 57)
Gender <- c("male", "female", "male", "female", "female")
Role <- c("CEO", "Director", "Head of Department", "Teacher", "Clerk")
LOS <- c(20, 15, 19, 8, 13)

employment <- data.frame(Name,Age,Gender,Role,LOS)

install.packages("ggplot2", dependencies = TRUE)

library("ggplot2")

Xin <- c(1:20)
Yin <- Xin^2

qplot(Xin,Yin,geom = "point")

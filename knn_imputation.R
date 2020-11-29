getwd()

setwd("C://Users//pranj//OneDrive//Term 2//I2R//John hopkins")

df <-  read.csv("bike_buyers.csv")

head(df)

summary(df)

View(df)

str(df)

install.packages("VIM")


#kNN imputation

library(VIM)

?kNN


df1 <- read.csv("bike_buyers.csv", header=T, na.strings=c("","NA"))

View(df1)

summary(df1)


df2 <- kNN(df1, c("Marital.Status", "Gender", "Income", "Children", "Home.Owner", "Cars", "Age"), k=3)

summary(df2)
View(df2)

df3 <- subset(df2, select = Ã.Â.Â.ID : Purchased.Bike)

summary(df3)


write.csv(df3,"C:\\Users\\pranj\\OneDrive\\Term 2\\I2R\\John hopkins\\bike_buyers_imputed_k3.csv", row.names = FALSE)

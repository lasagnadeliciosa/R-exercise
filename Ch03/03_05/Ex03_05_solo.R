sn <- read.csv("social_network.csv", header = T)
summary(sn$Age)
summary(sn)

fivenum(sn$Age) #very condenced view of the data

install.packages("psych")
library("psych")
describe(sn)

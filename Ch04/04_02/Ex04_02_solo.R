n1 <- rnorm(1000000) #create 1 million random normal values
hist(n1)

n2 <- rnorm(1000000) #create another 1 million random normal values
hist(n2)

n.add <- n1+n2 #average scores across two variables
hist(n.add)

n.mult <- n1*n2 #multiple scores across two vatiables
hist(n.mult)

ncubes <- n1^3
hist(ncubes)

install.packages("psych")
library("psych")

#calculate kurtosis for each distribution
kurtosi(n1)
kurtosi(n2)
kurtosi(n.add)
kurtosi(n.mult)
kurtosi(ncubes)

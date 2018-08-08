google <- read.csv("google_correlate.csv", header = T)
names(google)

#Spinning 3D scatterplot
#Install and load rgl package
install.packages("rgl")
library("rgl")
plot3d(google$data_viz, #X variable
       google$degree,   #Y variable
       google$facebook, #Z variable
       xlab = "data_viz",
       ylab = "degree",
       zlab = "facebook",
       col  = "red",
       size = 3)

plot3d(abs(rnorm(10000)), #X variable
       rnorm(10000),   #Y variable
       rnorm(10000), #Z variable
       xlab = "data_viz",
       ylab = "degree",
       zlab = "facebook",
       col  = "red",
       size = 3)

google <- read.csv("google_correlate.csv", header = T)
names(google)

#Basic scatterplot matrix, this creates scatterplots that compares all
#quantitative variables with each other at once.
pairs(~data_viz + degree + facebook + nba,
      data = google,
      pch = 20,
      main = "Simple Scatterplot Matriz")

#Use "Pairs Plot" from "psych" package
install.packages("psych")
library("psych")
pairs.panels(google[c(3,7,4,5)], gap = 0) #no gap between panels
#the longer and narrower the elipse, the stronger the assosiation
#the numbers mean correlation coeficients from 0~1.

google <- read.csv("google_correlate.csv", header = T)
names(google) #names of vatiables
str(google) #structure

viz.reg.dist <- split(google$data_viz, google$region)
boxplot(viz.reg.dist, col = "lavender") #boxplot by region

#barplot with means
viz.reg.mean <- sapply(viz.reg.dist, mean) #s-apply
barplot(viz.reg.mean,
        col = "beige",
        main = "Average Google Search Share of\n\"Data Visualization\" by Region of US")
abline(h = 0)

install.packages("psych")
library("psych")
describeBy(google$data_viz, google$region)

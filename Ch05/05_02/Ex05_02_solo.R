google <- read.csv("google_correlate.csv", header = T)
names(google)
str(google)

#Question: Is there an association between the percentage of people
#in a state with college degrees and interest in data visualization?

plot(google$degree, google$data_viz) #plot for scatterplot
plot(google$degree, google$data_viz,
     main = "Interest in Data Visualization Searches\nby Percentage of Pupulation with College Degrees",
     xlab = "Population with College Degrees",
     ylab = "Searches for \"Data Visualization\"",
     pch = 20, # appearance of the points
     col= "grey")

#add Linear regression line
abline(lm(google$data_viz ~ google$degree), col="red")#lm for linear model
# Lowess smoother line
lines(lowess(google$degree, google$data_viz), col="blue")

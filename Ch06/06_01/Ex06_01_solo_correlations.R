google <- read.csv("google_correlate.csv", header = T)
names(google)

#create data frame with only quantitative variables
g.quant <- google[c(3, 7, 4, 5)]

#Correlation matrix for data frame. Correlation goes from -1 to 1.
cor(g.quant)
#data_viz & facebook relationship: -0.63 Which means 
#the more interest there is in searching for Facebook, the less 
#interest there is in searching for data visualization, an vice versa.

#Test one pair of variables at a time
#Gives r, hypothesis test, and confidence interval.
cor.test(g.quant$data_viz, g.quant$degree)
#t = significance test, df = degree of freedom
#p-value: the probability of getting this correlation this big on
#random chance is extremely small.

#Calculate p-value for entire matrix
install.packages("Hmisc")
library("Hmisc")
#Then need to convert g.quant from data frame to matrix to get
#correlation matrix and p-values.
rcorr(as.matrix(g.quant))
#n stands for sample sizes.
#When looking at the P matrix, a value less than 0.05 is statistically
#significant. Ex. probability value for data_viz and nba is not
#statistically significant.
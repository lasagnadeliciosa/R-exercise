google <- read.csv("google_correlate.csv", header = T)
names(google)

#Find interest in NBA as a search term and see if that differs between
#states that have NBA teams and states that don't.

#independent 2-group t-test
t.test(google$nba ~ google$has_nba)

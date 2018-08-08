sn <- read.csv("social_network.csv", header = T)
install.packages("psych")
library("psych")

hist(sn$Times)
describe(sn$Times)

times.z <- scale(sn$Times) #to find z-scores
hist(times.z)
describe(times.z)

times.ln0 <- log(sn$Times) #to find log values
hist(times.ln0)
describe(times.ln0) #data comes out weird because you can do logs for 0.

times.ln1 <- log(sn$Times + 1) #a workaround to eliminate 0s.
hist(times.ln1)
describe(times.ln1)

times.rank <- rank(sn$Times) #ranking
hist(times.rank)
describe(times.rank)
#ties.method = c("average", "first", "random", "max", "min")
times.rankr <- rank(sn$Times, ties.method = "random")
hist(times.rankr)
describe(times.rankr)

time.gt1 <- ifelse(sn$Times > 1, 1, 0) #dichotomizing
time.gt1

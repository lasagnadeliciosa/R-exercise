sn <- read.csv("social_network.csv", header = T)
boxplot(sn$Age)
boxplot(sn$Age,
        col = colors() [18],
        notch = T,
        horizontal = T,
        main = "Ages of Repondents\nSocial Networking Survey of 202 Respondents",
        xlab = "Age of Respondents")
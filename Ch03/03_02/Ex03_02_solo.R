sn <- read.csv("social_network.csv", header = T)
hist(sn$Age)
hist(sn$Age,
     col = colors()[c(552,254,3,65,22,499,99)],
     main = "Ages of Respondents\nSocial Networking Survey of 202 Users",
     xlab = "Age of Repondents")

#Colors can be spicified as:
# col = "beige"
# col = colors() [18]

#or even multiple colors:
# col = color() [c(#,#,#,#,#....)]
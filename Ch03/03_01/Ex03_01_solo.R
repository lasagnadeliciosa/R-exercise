sn <- read.csv("social_network.csv", header = T)
site.freq <- table(sn$Site)
barplot(site.freq)
barplot(site.freq[order(site.freq, decreasing = T)])
barplot(site.freq[order(site.freq)], horiz = T)
fbba <- c(rep("gray", 5),
          rgb(59, 89, 152, maxColorValue = 255))
barplot(site.freq[order(site.freq)],
        horiz = T,
        col = fbba)
barplot(site.freq[order(site.freq)],
        horiz = T,
        col = fbba,
        border = NA,
        xlim = c(0,100),
        main = "Preferred Social Networking Site\nA Survey of 202 Users",
        xlab = "Number of Users")
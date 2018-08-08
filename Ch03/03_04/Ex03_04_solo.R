sn <- read.csv("social_network.csv", header = T)
table(sn$Site)
site.freq <- table(sn$Site)
site.freq

site.freq <- site.freq[order(site.freq, decreasing = T)]
site.freq

prop.table(site.freq) #proportions
round(prop.table(site.freq), 2)

#Pie chart
pct <- round(site.freq/sum(site.freq)*100)
lbls <- paste(names(site.freq), pct)
pie(site.freq,
    labels = lbls,
    col = rainbow(length(lbls)),
    main = "Pie Chart")

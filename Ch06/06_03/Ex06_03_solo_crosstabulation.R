sn <- read.csv("social_network2.csv", header = T)
names(sn)

#We will be looking for the association between gender and site.
#Why? To see if men and women report different websites as their preferred 
#social media platform.

#Create contigency talble
sn.tab <- table(sn$Gender, sn$Site)
sn.tab

#If desired, we can also get marginal frequencies.
margin.table(sn.tab, 1) #Row marginal frequencies.
margin.table(sn.tab, 2) #Column marginal frequencies.

#Get cell, row, and column proportions %, rounding to two decimals.
round(prop.table(sn.tab), 2)    #cell %
round(prop.table(sn.tab, 1), 2) #row %
round(prop.table(sn.tab, 2), 2) #column %
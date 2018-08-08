google <- read.csv("google_correlate.csv", header = T)
names(google)

#We will be predicting interest in data visualization. This is how 
#common that term is as a Google search term relative to other 
#searches on a state by state basis.
reg1 <- lm(data_viz ~ #lm means linear model
          degree + stats_ed + facebook + nba + has_nba + region,
          data = google)
summary(reg1)
#We look at the t value.
#The ones with "*" are statistically significant.
#The (Intercept) is significant because it's not zero, but we don't care about that.
#The first one is degree. States that have a higher proportion of people 
#with college degrees also show a higher interest in searching for data visualization.
#The second one is facebook, except it's negative. States that 
#show a higher interest in searching for Facebook show a lower 
#interest in searching for data visualization.

#Summary: more degrees, more interest in data_viz, 
#more interest in facebook, less interest in data_viz.
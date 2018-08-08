#We want to compare several groups on a single quantitative outcome.
#If you are comparing two, use t-test.
#If you are comparing more than two: use analysis of variance, or ANOVA.

google <- read.csv("google_correlate.csv", header = T)
names(google)

#One way ANOVA, aov stands for "analysis of variance"
anova1 <- aov(data_viz ~ region, data = google)
summary(anova1)

#Two way factorial design, two ways to do it:
#1st way:
anova2a <- aov(data_viz ~
               region + stats_ed + region:stats_ed,
               data = google)
summary(anova2a)

#2nd way:
anova2b <- aov(data_viz ~
               region*stats_ed,
               data = google)
summary(anova2b)

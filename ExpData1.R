data <- runif(10, 0.5, 7.5)
fivenum(data)
str(fivenum)
summary(data)

# Note that in a boxplot, the "whiskers" that stick
# out above and below the box have a length of 1.5 times the inter-quartile range, or IQR,
# which is simply the distance from the bottom of the box to the top of the box. Anything
# beyond the whiskers is marked as an "outlier" and is plotted separately as an individual
# point.

boxplot(data, col = 'blue')
data1 <- rnorm(100,1,0.5)

barplot(data1)
library(maps)                #install.packages("maps")
map("county","california")

#with(filter(pollution, pm25 > 15), points(longitude, latitude))

hist(data1, col='green')
rug(data1)

hist(data1, col='green', breaks=100)
rug(data1)

boxplot(data, col = 'blue')
abline(h = 3.5)


hist(data1, col='green', breaks=100)
rug(data1)
abline(v=1.0, lwd=4)

# library(dplyr)
# table(pollution$region) %>% barplot(col = "wheat")

# multiple boxplot
boxplot(pm25 ~ region, data = pollution, col = "red")

# multiple histograms
par(mfrow = c(2, 1), mar = c(4, 4, 2, 1))
hist(subset(pollution, region == "east")$pm25, col = "green")
hist(subset(pollution, region == "west")$pm25, col = "green")

# for continuous variable, scatterplot

with(pollution, plot(latitude, pm25))
abline(h = 12, lwd = 2, lty = 2)

with(pollution, plot(latitude, pm25, col = region))
abline(h = 12, lwd = 2, lty = 2)

> par(mfrow = c(1, 2), mar = c(5, 4, 2, 1))
> with(subset(pollution, region == "west"), plot(latitude, pm25, main = "West"))
> with(subset(pollution, region == "east"), plot(latitude, pm25, main = "East"))

> ## Lattice
> library(lattice)
> xyplot(pm25 ~ latitude | region, data = pollution)

> ## ggplot2
> library(ggplot2)
> qplot(latitude, pm25, data = pollution, facets = . ~ region)

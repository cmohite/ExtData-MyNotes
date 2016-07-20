# base - artist's palette - start with a blank canvas and build up from there - original plotting system in R
# lattice - all at once
# ggplot2 - similar to base system - incremental


# base plotting system
# - start with a plot functions, then use annotations (text, lines, axis, points)

data(airquality)
head(airquality)

fivenum(airquality$Temp)
summary(airquality$Temp)

str(airquality$Temp)

with(airquality, {plot(Temp, Ozone)})
with(airquality, {lines(loess.smooth(Temp, Ozone))})
title(main= 'Temp Vs Ozone')


# downside - you cannot go backwards once the plot is started. Plan in advance. 
# downside - its difficult to describe or translate plot to others as there is no graphical language
# to communicate what have you done.

# The lattice system -plots are created with a single function call - xyplot/bwplot

# Lattice plots tend to be most useful for conditioning types of plots, i.e. looking at how y
# changes with x across levels of z.
# things lile space & margins are automatically set.

library(lattice)

head(state.x77) # class - matrix
head(state.region) # class - factor
state <- data.frame(state.x77, region = state.region)
xyplot(Life.Exp ~ Income | region, data=state, layout=c(4,1))

# downside - very awkward to specify an entire plot in a single function call.
# downside - once you create a plot, you cannot add to plots.

# the ggplot2 system - split the difference between base & lattice. Taking cues from lattice, it 
# manages spacing & margins automatically but lets you annotate the plot by "adding" to a plot.

library(ggplot2) # install.packages("ggplot2")

data(mpg)
qplot(displ, hwy, data=mpg)


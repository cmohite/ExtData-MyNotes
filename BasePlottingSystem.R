# The Base Plotting System

# The core plotting and graphics engine in R is encapsulated in the following packages:
#    . graphics: contains plotting functions for the "base" graphing systems, including
#      plot, hist, boxplot and many others.

#    . grDevices: contains all the code implementing the various graphics devices, including
#      X11, PDF, PostScript, PNG, etc.

# 1. initializing a new plot
# 2. annotating (adding to) an existing plot

# The base graphics system has many global parameters that can set and tweaked. These
# parameters are documented in ?par and are used to control the global behavior of plots,
# such as the margins, axis orientation, and other details.

?par

hist(airquality$Ozone)

boxplot(Ozone ~ Month, data=airquality)

airquality = transform(airquality, Month=factor(Month))
boxplot(Ozone ~ Month, data=airquality, xlab= "Month", ylab="Ozone")

with(airquality, plot(Wind, Ozone))  # scatterplot

# plot func is called generic function in R as it's behavior can change depending upon the type of
# data passed to it.


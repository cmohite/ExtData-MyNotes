getwd()
dir()

stateData <- read.csv(".\\data\\stateData.csv")
head(stateData)

stateSubset <- subset(stateData, state.region == 1)

stateSubsetBracket <- stateData[statData$state.region==1, ]

reddit <- read.csv(".\\data\\reddit.csv")
summary(reddit)
str(reddit)

# factor is a categorical data which can have many levels.

table(reddit$employment.status)

levels(reddit$age.range)

library(ggplot2)
qplot(age.range, data=reddit)

reddit$age.range <- ordered(reddit$age.range, levels=c("Under 18", "18-24","25-34","35-44","45-54",
                                                       "55-64","65 or Above"))
qplot(age.range, data=reddit)

getwd()
setwd("./data")
list.files()



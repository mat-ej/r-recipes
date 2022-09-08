library(rpart)
library(rpart.plot)
library(viridis)
library(magrittr) # needs to be run every time you start R and want to use %>%
library(dplyr)
source("trees/features.R")

data = read.csv('data/mma.csv')
data = data %>% mutate_at(categoricals, as.logical)
data$WINNER = as.logical(data$WINNER)

mma.data = data[c(red,blue,categoricals,'WINNER')]

tree_1 <- rpart(WINNER ~.,
   method="class", data=mma.data, maxdepth = 10, minsplit=5, cp = 0.01
                )

tree_1$variable.importance
paste("Number of splits: ", tree_1$cptable[dim(tree_1$cptable)[1], "nsplit"])

rpart.plot(tree_1, digits = 2,
           box.palette = viridis::viridis(10, option = "D", begin = 0.85, end = 0),
           shadow.col = "grey65", col = "grey99")

printcp(tree_1) # display the results
plotcp(tree_1) # visualize cross-validation results
summary(tree_1) # detailed summary of splits

# plot tree
plot(fit, uniform=TRUE,
   main="Classification Tree for MMA")
text(fit, use.n=TRUE, all=TRUE, cex=.8)
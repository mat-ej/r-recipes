library(caTools)
library(FFTrees)
source("trees/features.R")
getwd()


data = read.csv('data/mma.csv')
features = data[c(red, blue)]
target = data['WINNER']

mma.data = data[c(red,blue,'WINNER')]

mma.data$WINNER = as.logical(mma.data$WINNER)
# Create an FFTrees object from the heartdisease data:

mma.fft <- FFTrees(formula = WINNER ~.,
                   data = mma.data,
                   max.levels = 6,
                   data.test = mma.data)
plot(mma.fft)

mma.fft$competition$test

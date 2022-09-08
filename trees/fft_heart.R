library(caTools)
library(FFTrees)

# Create an FFTrees object from the heartdisease data:
heart.fft <- FFTrees(formula = diagnosis ~.,
                     data = heart.train,
                     data.test = heart.test,
                     decision.labels = c("Healthy", "Disease"))

heart.fft

plot(heart.fft,
     data = "test",
     main = "Heart Disease")
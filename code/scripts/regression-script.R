# Read Advertising data into R
Advertising <- read.csv(file = "../../data/Advertising.csv", header = TRUE)

# Get rid of 1st column for linear model 
Advertising <- Advertising[,-1]

# Multiple Regression for TV, Radio and Newspaper against Sales
model <- lm(Sales ~ TV + Radio + Newspaper, data = Advertising)
model_summary <-summary(model)

#residual plot
png('../../images/residual-plot.png')
plot(model, which = 1)
dev.off()

#scale location plot
png('../../images/scale-location-plot.png')
plot(model, which = 3)
dev.off()

#Normal QQ
png('../../images/normal-qq-plot.png')
plot(model, which = 2)
dev.off()

#TV
tv_model <- lm(Sales~TV, data = Advertising)
tv_summary <- summary(tv_model)
png('../../images/scatterplot-tv-sales.png')
plot(x = Advertising$TV, y = Advertising$Sales, xlab = "TV", ylab ="Sales", main = "TV vs Sales")
abline(tv_model, col = "red")
dev.off()

#Radio
radio_model <- lm(Sales~Radio, data = Advertising)
radio_summary <- summary(radio_model)
png('../../images/scatterplot-radio-sales.png')
plot(x = Advertising$Radio, y = Advertising$Sales, xlab = "Radio", ylab ="Sales", main = "Radio vs Sales")
abline(radio_model, col = "red")
dev.off()

#Newspaper
news_model <-lm(Sales~Newspaper, data = Advertising)
news_summary <- summary(news_model)
png('../../images/scatterplot-newspaper-sales.png')
plot(x = Advertising$Newspaper, y = Advertising$Sales, xlab = "Newspaper",
     ylab ="Sales", main = "Newspaper vs Sales")
abline(news_model, col = "red")
dev.off()

#save in regression binary data 
save(model, model_summary, tv_model, tv_summary, radio_model, 
     radio_summary, news_model, news_summary, file = "../../data/regression.RData")



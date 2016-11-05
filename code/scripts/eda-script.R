# Read Advertising data into R
Advertising <- read.csv(file = "../../data/Advertising.csv", header = TRUE)

# Output summary statistics and correlation matrix to eda-output.txt
sink(file = "../../data/eda-output.txt")
cat("Summary statistics for TV\n")
summary(Advertising$TV)
cat("Summary statistics for Radio\n")
summary(Advertising$Radio)
cat("Summary statistics for Newspaper\n")
summary(Advertising$Newspaper)
cat("Summary statistics for Sales\n")
summary(Advertising$Sales)
cat("Correlation matrix for advertising data\n")
cor(Advertising)
sink()

# Save histogram of TV in PNG formats
hist(Advertising$TV, main = "Historgram of TV", xlab = "TV")
dev.copy(png, '../../images/histogram-tv.png')
dev.off()

# Save histogram of Radio in PNG formats
hist(Advertising$Radio, main = "Historgram of Radio", xlab = "Radio")
dev.copy(png, '../../images/histogram-radio.png')
dev.off()

# Save histogram of Newspaper in PNG formats
hist(Advertising$Newspaper, main = "Historgram of Newspaper", xlab = "Newspaper")
dev.copy(png, '../../images/histogram-newspaper.png')
dev.off()

# Save histogram of Sales in PNG formats
hist(Advertising$Sales, main = "Historgram of Sales", xlab = "Sales")
dev.copy(png, '../../images/histogram-sales.png')
dev.off()


# Save scatterplot for correlation matrix
png(filename = "../../images/scatterplot-matrix.png")
pairs(Advertising, col = "blue")
dev.off()

# Save correltaion matrix in binary format 
corr_matrix = cor(Advertising)
save(corr_matrix, file = "../../data/correlation-matrix.RData")

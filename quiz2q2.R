# Libraries
library(sqldf)

# Download the file
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv "
download.file(url, destfile= "acs.csv", method = "curl")
dateDownloaded <- date()

# Read data
asc <- read.csv("acs.csv")
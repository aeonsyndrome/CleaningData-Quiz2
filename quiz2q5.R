# libraries

# download file
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for", "q5.for")

# read file
data <- read.fwf("q5.for",widths = c(15, 4, 9, 4, 9, 4, 9, 4, 4), skip = 4, header = FALSE)
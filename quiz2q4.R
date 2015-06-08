# libraries
library(httr)

# get data
htmlcode <- GET("http://biostat.jhsph.edu/~jleek/contact.html")
content <- content(htmlcode, as="text")


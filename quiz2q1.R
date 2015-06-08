library(httr)
library(jsonlite)
library(httpuv)

# 1. Find OAuth settings for github:
#    http://developer.github.com/v3/oauth/
oauth_endpoints("github")

# 2. To make your own application, register at at
#    https://github.com/settings/applications. Use any URL for the homepage URL
#    (http://github.com is fine) and  http://localhost:1410 as the callback url
#
#    Replace your key and secret below.
myapp <- oauth_app("github",
                   key = "03ca07a1b867a0563544",
                   secret = "0111717b1e202d918676b2f0ed78f68fc808de54")

# 3. Get OAuth credentials & token
github_token <- oauth2.0_token(oauth_endpoints("github"), myapp,cache=FALSE)
gtoken <- config(token = github_token)

# 4. Use API
data <- GET("https://api.github.com/users/jtleek/repos", gtoken)
stop_for_status(data)
content(data)


# clean json
json1 <- fromJSON(toJSON(content(data)))
json1[json1$name == "datasharing",]$created_at
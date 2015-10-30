##installing required  packages
install.packages("twitteR")
install.packages("tm")
install.packages("wordcloud")
install.packages("RColorB...")
install.packages("httr")

##loading required packages
library("twitteR")
library("tm")
library("RColor")
library("wordcloud")
library("httr")    
install.packages("ROAuth")## for app

##gettin twitter authorization setup

api_key->"your api key"
consumer_secret <- 'your api secret'
access_token <- 'your access token'
access_secret <- 'your access secret'
setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret)


## to avoid error OAuth authentication error:--> incorrectly called setup_twitter_oauth()
install.packages("base64enc")
##if code is giving error inspite of setting up the app

setup_twitter_oauth(api_key,api_secret,access_token,access_token_secret)



##to extract tweets and covert them into vectors
mach_tweets = searchTwitteR("machine Learning",n=500,lang="en")

mach_text = sapply(mach_tweets,function(x)x$getText())

##Construct the lexical Corpus and the Term Document Matrix
mach_corpus = Corpus(VectorSource(mach_text))
tdm = TermDocumentMatrix(mach_corpus,control = list(removePunctuation = TRUE, stopwords = c("machine", "learning", stopwords("english")),removeNumbers = TRUE, tolower = TRUE))

m = as.matrix(tdm)
word_freq=sort(rowSums(),decreasing = TRUE)

##if margins are less

par("mar")
par(mar=c(1,1,1,1))

wordcloud(dm$word, dm$freq, random.order=FALSE, colors=brewer.pal(8, "Dark2"))





Twitch <- read.csv("Most Popular Twitch Streamers.csv")
library(ggplot2)
library(scales)

#clean the date
Twitch$Date <- as.Date(Twitch$date, "%m/%d/%Y")

p <- ggplot(data = twitch, mapping = aes(x = Date,
                                         y = Viewers, color = Streamer))
p + geom_line(mapping = aes(group = Streamer)) +
  scale_y_continuous(labels = unit_format(unit = "M", scale = 1e-6)) +
  labs(x = "Date",
       y = "Viewers",
       title = "Most Popular Twitch Streamers")

#facet graphs
p + geom_line(mapping = aes(group = Streamer)) +
  labs(x = "Date",
       y = "Viewers",
       title = "Most Popular Twitch Streamers") +
  facet_wrap(~ Streamer)



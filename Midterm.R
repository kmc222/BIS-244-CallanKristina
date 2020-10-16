# Kristina Callan
library(tidyverse)
temp <- getwd()
DATA <- read.csv("midterm.csv")

filtered_data <- DATA %>% filter(countriesAndTerritories
                                 %in% c("Canada", "France", "Germany",
                                        "Italy", "Japan",
                                        "United_States_of_America",
                                        "United_Kingdom"))

# Plot
p <- ggplot()
p + geom_line(data = filtered_data,
               mapping = aes(x=month,
                             y=cases,color = countriesAndTerritories )) +
  geom_line(data=filtered_data,
             mapping = aes(x=month,
                           y=cases, color = countriesAndTerritories)) +
  labs(color="countiresAndTerritories", x="Months", y="New Cases Per Day",
       title= "G7 Covid-19 Case Count",
       subtitle= "by Kristina Callan as of 10-16-20",
       caption= "Data: ECDC Times") +
       scale_x_continuous(breaks = c(1.0,4.0,7.0,10.0),
                           labels = c("Jan", "Apr", "Jul", "oct"))



                                
                                   
                                   
                  
install.packages("tidyverse")
library("tidyverse")
getwd()
#setwd(./"covid-19-data/")
US <- read.csv("covid-19-data/us-states.csv")

#filter
PA_data <- US %>% filter(state == "Pennsylvania")

#create
date <- c("2000/04/21", "2000/04/22")
deaths <- c("282","297")

n <- length(date)

for (i in 1:n) {
  if (date[i]=="2000/04/21") {
    print(deaths[i])
  }else{}
}
  
for (i in 1:n) {
  if (date[i]=="2000/04/21") {
    print(deaths[i])
  }else{}
}

#sum
sum(PA_data$deaths)
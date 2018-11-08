library(tidyverse)
setwd("Desktop/5th-SEM-Stuff/DataAnalytics/DataAnalyticsProject/")
getwd()
vehicle_data <- read.csv("data/Vehicle_Information.csv.bz2")
accident_data <- read.csv("data/Accident_Information.csv.bz2")
summary(vehicle_data)
#cleaning accident_data
summary(accident_data)
#removing uneccesary attributes
clean_data <- accident_data[, -c(2, 3, 4, 5, 17, 18, 20, 23, 24)]
#removing rows with NA or junk values
clean_data <- drop_na(clean_data, Latitude)
clean_data <- drop_na(clean_data, Longitude)
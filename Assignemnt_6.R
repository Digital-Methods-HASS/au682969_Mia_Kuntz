---
title: "Assignment 6"
author: "Mia Thuge Kuntz"
date: "31/10/2022"
---
install.packages("tidyverse")
library(tidyverse)
library(here)
library(lubridate)

# 1. Task
## Loading the data set
getwd()
gapminder <- read_csv(here("gapminder_data.csv"), na = "NULL")

## Defining GDP function using defensive functions
calcGDP <- function(dat, year=NULL, country=NULL) {
  if(!is.null(year)) {
    dat <- dat[dat$year %in% year, ]
  }
  if (!is.null(country)) {
    dat <- dat[dat$country %in% country,]
  }
  gdp <- dat$pop * dat$gdpPercap
  
  new <- cbind(dat, gdp=gdp)
  return(new)
}

## Calculating the GDP of Denmark in the years 1967, 1977, 1987, 1997, 2007, and 2017
calcGDP(gapminder, year = c(1952, 1977, 1987, 1997, 2007), country = "Denmark")

# 2. Task
## Creating the script
candidateCountries <- grep("^B", unique(gapminder$country), value=TRUE)
lowerThreshold <- 50
upperThreshold <- 70

### I am here using the mean lifeExp, since it was not mentioned in the task which year to use
for (iCountry in candidateCountries){
  tmp <- mean(gapminder[gapminder$country == iCountry, "lifeExp"])
  
  if(tmp < lowerThreshold){
    cat("Average Life Expectancy in", iCountry, "is less than", lowerThreshold, "\n")
  }
  else if(tmp > lowerThreshold && tmp < upperThreshold){
    cat("Average Life Expectancy in", iCountry, "is between", lowerThreshold, "and", upperThreshold, "\n")
  }
  else{
    cat("Average Life Expectancy in", iCountry, "is greater than", upperThreshold, "\n")
  }
  rm(tmp)
}



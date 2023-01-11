# 1.
## Assigning the values to a vector
rooms <- c(1, 2, 4, 5, 1, 3, 1, NA, 3, 1, 3, 2, 1, NA, 1, 8, 3, 1, 4, NA, 1, 3, 1, 2, 1, 7, 1, 9, 3, NA)

## Assigning the complete values above 2 to a vector using the `complete.cases` and `>` functions
rooms_new <- rooms[complete.cases(rooms) & rooms > 2]
### Running the object name shows the values which are kept in the vector
rooms_new
#### 12 of the elements are both complete cases and have rooms above 2

## Using the `sum` function gives me the total sum of the rooms
sum(rooms_new)
### The total sum of the rooms are = 55

# 2.
## The class of the vector can be found using the `class` function
class(rooms)
### The class of the rooms vector is numeric even though it contains NA's

# 3.Downloading data to work with in R
install.packages("tidyverse")
library(tidyverse)

download.file("https://ndownloader.figshare.com/files/11492171"
              , "SAFI_clean.csv", mode = "wd")

## 3.1 Assigning data to an object
interviews <- read_csv("Safi_clean.csv", na= "NULL")

## 3.2 Showing the object in the interface

## 3.3 Showing the file structure of my R project













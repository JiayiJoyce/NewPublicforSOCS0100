install.packages("tidyverse")
EMDAT <- read.csv("/Users/chenjiayi/Desktop/PublicRepoforSOCS0100Wk3/EMDAT.csv")

pacman::p_load(
  tidyverse, # the tidyverse framework
  skimr# quickly providing a broad overview of a data frame
)
install.packages("tidyverse")
library(tidyr)

library(dplyr)

EMDAT%>%
  select('Entity','Year','injured_all_disasters','deaths_all_disasters','homeless_all_disasters')
#Select the variables that capture the information related to deaths, injuries, homelessness caused by all disasters. You can rename the variables
#Create three tables showing the highest averages of deaths, injuries, and homelessness (e.g. top 10)
#Create a new binary variable in the original dataset to show whether the number of deaths by all disasters is higher than 500 in a given year
#Reshape the dataset (selected version) and save it as a separate dataset in your repository
EMDAT_summary <- EMDAT %>%
  group_by(Entity)%>%
  summarize(
    averageinjury=mean(injured_all_disasters,na.rm=TRUE)%>% round(2),
    averagedeath=mean(deaths_all_disasters,na.rm=TRUE)%>% round(2),
    averagehomeless=mean(homeless_all_disasters,na.rm=TRUE)%>% round(2)
  )
EMDAT_summary





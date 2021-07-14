library(data.table)
library(dygraphs)
library(dplyr)
library(readxl)
library(fredr)
library(stringr)
library(tidyr)
library(widgetframe)
library(xts)

# FRED API key
fredr_set_key("58404cc3d72a6ed99bd9923872a64f4c")


National_initial_claims<-fredr(series_id= "ICSA", observation_start = as.Date("2020-02-01"))
National_initial_claims<- National_initial_claims[,c(1,3)]
POPTHM<-fredr(series_id= "POPTHM", observation_start = as.Date("2020-02-01"))
POPTHM<- POPTHM[,c(1,3)]
NICPOP<-merge(x=National_initial_claims, y=POPTHM, by="date", all.x = TRUE)
colnames(NICPOP)<- c("date", "initial claims", "population")
NICPOP<-NICPOP%>% fill(population, .direction= "down")
NICPOP$nationalP<- NICPOP$`initial claims`/(NICPOP$population*10) 
nicpop<-as.data.frame(NICPOP[,c(1,4)])

SCICLAIMS<-fredr(series_id= "SCICLAIMS", observation_start = as.Date("2020-01-01"))
SCICLAIMS<-SCICLAIMS[,c(1,3)]
SCPOP<-fredr(series_id= "SCPOP", observation_start = as.Date("2020-01-01"))
SCPOP<-SCPOP[,c(1,3)]
SCICPOP<-cbind(SCICLAIMS, SCPOP)
SCICPOP<-SCICPOP[,c(1,2,4)]
colnames(SCICPOP)<- c("date", "initial claims", "population")
SCICPOP$scP<- SCICPOP$`initial claims`/(SCICPOP$population*10)
scicpop<- as.data.frame(SCICPOP[, c(1,4)])


nicscic<-merge(nicpop,scicpop, all.x=TRUE)
staticdf<-nicscic
nicscic<-xts(nicscic, order.by= nicscic$date)
nicscic<-nicscic[,c(2,3)]


graphOneBar<-dygraph(nicscic, ylab = "Weekly Initial Claims (% of population)", xlab = "Date")  %>%
  dySeries("nationalP", label= "National", color = "#B22234") %>%
  dySeries("scP", label= "South Carolina", color = "#003366") %>%
  dyOptions(fillAlpha= 0.8) %>%
  dyLegend(width = 200, labelsSeparateLines = TRUE) %>%
  dyBarChart()
graphOneBar

saveWidget(graphOneBar, "dygraph initial claims ratio.html")



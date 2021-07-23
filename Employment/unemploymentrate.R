# FRED API key
fredr_set_key("58404cc3d72a6ed99bd9923872a64f4c")
library(dplyr)
library(dygraphs)
library(fredr)
library(ggplot2)
library(widgetframe)
library(xts)
# National Unemployment rate:  https://fred.stlouisfed.org/series/UNRATE
# South Carolina unemployment rate:  https://fred.stlouisfed.org/series/SCUR
National_unemployment_rate<-fredr(series_id= "UNRATE", observation_start = as.Date("1976-01-01"))
National_unemployment_rate<- National_unemployment_rate[,c(1,3)]
South_Carolina_unemployment_rate<-fredr(series_id= "SCUR")
South_Carolina_unemployment_rate<- South_Carolina_unemployment_rate[,c(1,3)]

NSCUR<-merge(National_unemployment_rate, South_Carolina_unemployment_rate, by="date", all.x=TRUE)
colnames(NSCUR)<- c("date", "national unemprate", "south caroline unemprate")
NSCUR<- xts(NSCUR, order.by = NSCUR$date)
NSCUR<-NSCUR[,2:3]

graphTwo<- dygraph(NSCUR, ylab = "Unemployment Rate (%)", xlab = "Date") %>%
  dySeries("national unemprate", label= "National", color = "#B22234") %>%
  dySeries("south caroline unemprate", label= "South Carolina", color = "#003366") %>%
  dyOptions(drawPoints = TRUE, strokeWidth = 3, rightGap = TRUE) %>%
  dyLegend(width = 1200, labelsSeparateLines = TRUE) %>% 
  dyHighlight() %>%
  dyRangeSelector() %>%
  dyShading(from= "1980-01-01", to="1980-07-01", color = "#cecece")%>%
  dyShading(from= "1981-07-01", to="1982-11-01", color = "#cecece")%>%
  dyShading(from= "1990-07-01", to=" 1991-03-01", color = "#cecece")%>%
  dyShading(from= "2001-03-01", to="2001-11-01", color = "#cecece") %>%
  dyShading(from = "2007-12-01", to="2009-06-01", color = "#cecece") %>%
  dyShading(from = "2020-03-01", to= "2021-03-01" ,color = "#FDFD96")
graphTwo
saveWidget(graphTwo, "dygraph unemployment rate.html")

graphTwoA<- dygraph(NSCUR, ylab = "Unemployment Rate (%)", xlab = "Date") %>%
  dySeries("national unemprate", label= "National", color = "#B22234") %>%
  dySeries("south caroline unemprate", label= "South Carolina", color = "#003366") %>%
  dyOptions(drawPoints = TRUE, strokeWidth = 3) %>%
  dyLegend(width = 1200, labelsSeparateLines = TRUE) %>% 
  dyHighlight() %>%
  dyRangeSelector(dateWindow = c("2005-01-01", "2022-01-01")) %>%
  dyShading(from= "1980-01-01", to="1980-07-01", color = "#cecece")%>%
  dyShading(from= "1981-07-01", to="1982-11-01", color = "#cecece")%>%
  dyShading(from= "1990-07-01", to=" 1991-03-01", color = "#cecece")%>%
  dyShading(from= "2001-03-01", to="2001-11-01", color = "#cecece") %>%
  dyShading(from = "2007-12-01", to="2009-06-01", color = "#cecece") %>%
  dyShading(from = "2020-03-01", to= "2021-03-01" ,color = "#FDFD96")








national_unemp_begin2005<-fredr(series_id= "UNRATE", observation_start = as.Date("2005-01-01"))
national_unemp_begin2005<- national_unemp_begin2005[,c(1,3)]
sc_unemp_begin2005<-fredr(series_id= "SCUR", observation_start = as.Date("2005-01-01"))
sc_unemp_begin2005<- sc_unemp_begin2005[,c(1,3)]
NSCUR2005<-merge(national_unemp_begin2005, sc_unemp_begin2005, by="date", all.x=TRUE)
colnames(NSCUR2005)<- c("date", "national unemprate", "south caroline unemprate")

#static

library(tidyverse)
df <- NSCUR2005 %>%
  select(date, `national unemprate`, `south caroline unemprate`) %>%
  gather(key = "variable", value = "value", -date)


static_unemp_rate<-ggplot(df, aes(x = date, y = value)) + labs(x = "Date", y="Unemplayment Rate") +
  geom_rect(xmin=as.Date("2007-12-01"), xmax=as.Date("2009-06-01"), ymin=0, ymax=Inf, fill="#cecece", alpha=0.2) +
  geom_rect(xmin=as.Date("2020-03-01"), xmax=as.Date("2021-03-01"), ymin=0, ymax=Inf, fill="#cecece", alpha=0.2) +
  geom_line(aes(color = variable), size=1) +
  scale_color_manual(values = c("#B22234", "#003366")) 
static_unemp_rate 

  
ggsave("static unemployment rate.png",
  plot = static_unemp_rate,
  device = "png")


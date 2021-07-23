library(dplyr)
library(fredr)
library(data.table)
library(xts)
library(dygraphs)

SCemp<-fredr(series_id= "SCNA", observation_start = as.Date("2020-02-01"))
SCemp<-SCemp[,c(1,3)]
colnames(SCemp)<-c("date", "value")

Nemp<-fredr(series_id= "CE16OV", observation_start = as.Date("2020-02-01"))
Nemp<-Nemp[,c(1,3)]
colnames(Nemp)<-c("date", "value")

SCemp<- data.table(SCemp)
Nemp<- data.table(Nemp)


SC<-SCemp %>% 
  mutate(pChange = ((value- 2196.4)/2196.4) * 100)
National<-Nemp %>%
  mutate(pChange= ((value- 158732)/158732) *100)

q<-merge(SC, National, by="date")
q<-q[, c(1,3,5)]
colnames(q)<- c("date", "pchangeSC", "pchangeN")

graphFour<-dygraph(q, xlab = "Date", ylab = "Percent Change <br> from February 2020") %>%
  dySeries("pchangeSC", label = "National", color = "#B22234" ) %>%
  dySeries("pchangeN", label="South Carolina", color = "#003366") %>%
  dyOptions(drawPoints = TRUE, strokeWidth = 3) %>%
  dyLegend(width = 170, labelsSeparateLines = TRUE) %>% 
  dyHighlight()

saveWidget(graphFour, "dygraph Jobs Recovery.html")

#static
library(tidyverse)
staticdf <- q %>%
  select(date, pchangeN, pchangeSC) %>%
  gather(key = "variable", value = "value", -date)


static_jobsrecovery<-ggplot(staticdf, aes(x = date, y = value)) + labs(x = "Date", y="Percent Change from February 2021") +
  geom_line(aes(color = variable), size=1) +
  scale_color_manual(values = c("#B22234", "#003366")) 
static_jobsrecovery 

ggsave("static jobs recovery.png",
       plot = static_jobsrecovery,
       device = "png")


#labor force participation rate in South Carolina
library(fredr)
library(ggplot2)
# data derived from R

#setAPIkey
fredr_set_key("373a0327d00763e1205ce9d3d8941b50")
laborforceSC<- fredr(series_id= "LBSSA45", observation_start = as.Date("2011-01-01"))

head(laborforceSC)
ts(laborforceSC, start = 2011, end = 2021)

plot_laborforceSC<- ggplot(laborforceSC,aes(x=date, y=value,)) + geom_line(color="#4f86f7") + labs(title = "Labor Force Participation Rate in South Carolina", x="Date", y="Percent",caption ="data from Fred") + scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + theme(axis.text.x = element_text(angle = 60, hjust = 1))
plot_laborforceSC

#2020-2021 Labor Force SC
head(laborforceSC)
ts(laborforceSC,start = 2020,end = 2021)

plot2_laborforceSC<- ggplot(laborforceSC,aes(x=date, y=value,)) + geom_line(color="#4f86f7") + labs(title = "Labor Force Participation Rate in South Carolina", x="Date", y="Percent",caption ="data from Fred") + scale_x_date(date_labels = "%m-%Y", date_breaks = "1 month", limits =c(as.Date("2020-01-01"),as.Date("2021-02-01"))) + theme(axis.text.x = element_text(angle = 60, hjust = 1))
plot2_laborforceSC

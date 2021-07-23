#Initial Claims in South Carolina
library(fredr)
library(ggplot2)

# data derived from R

#setAPIkey
fredr_set_key("373a0327d00763e1205ce9d3d8941b50")
scclaims<- fredr(series_id= "SCICLAIMS", observation_start = as.Date("2011-01-01"))

head(scclaims)
ts(scclaims, start = 2011, end = 2021)

plot_scclaims<- ggplot(scclaims,aes(x=date, y=value,)) + geom_line(color="#4f86f7") + labs(title = "Initial Claims in South Carolina", x="Date", y="Number of Claims",caption ="data from Fred") + scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + theme(axis.text.x = element_text(angle = 60, hjust = 1))
plot_scclaims

#2020-2021 initial Claims SC
head(scclaims)
ts(scclaims,start = 2020,end = 2021)

plot2_scclaims<- ggplot(scclaims,aes(x=date, y=value,)) + geom_line(color="#4f86f7") + labs(title = "Labor Force Participation Rate in South Carolina", x="Date", y="Number of Claims",caption ="data from Fred") + scale_x_date(date_labels = "%m-%Y", date_breaks = "1 month", limits =c(as.Date("2020-01-01"),as.Date("2021-02-01"))) + theme(axis.text.x = element_text(angle = 60, hjust = 1))
plot2_scclaims

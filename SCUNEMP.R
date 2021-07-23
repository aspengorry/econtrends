#SC Unemployment Rate
library(fredr)
library(ggplot2)

# data derived from R

#setAPIkey
fredr_set_key("373a0327d00763e1205ce9d3d8941b50")
# import SC unemployment rate series
scunrate<- fredr(series_id= "SCUR", observation_start = as.Date("2011-01-01"))

head(scunrate)
ts(scunrate,start = 2011,end = 2021)

plot_scunrate<- ggplot(scunrate,aes(x=date, y=value,)) + geom_line(color="#4f86f7") + labs(title = "South Carolina Unemployment Rate", x="Date", y="Percent",caption ="data from Fred") + scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + theme(axis.text.x = element_text(angle = 60, hjust = 1))
plot_scunrate

#2020-2021 SCUNRATE
head(scunrate)
ts(scunrate,start = 2020,end = 2021)

plot2_scunrate<- ggplot(scunrate,aes(x=date, y=value,)) + geom_line(color="#4f86f7") + labs(title = "South Carolina Unemployment Rate", x="Date", y="Percent",caption ="data from Fred") + scale_x_date(date_labels = "%m-%Y", date_breaks = "1 month", limits =c(as.Date("2020-01-01"),as.Date("2021-02-01"))) + theme(axis.text.x = element_text(angle = 60, hjust = 1))
plot2_scunrate

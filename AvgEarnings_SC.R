#Average Hourly Earnings of all Employees, Total Private in South Carolina
library(fredr)
library(ggplot2)
# data derived from R

#setAPIkey
fredr_set_key("373a0327d00763e1205ce9d3d8941b50")
#import Average Hourly Earnings SC
earningsSC<- fredr(series_id= "SMU45000000500000003SA", observation_start = as.Date("2011-01-01"))

head(earningsSC)
ts(earningsSC,start = 2011,end = 2021)

plot_earningsSC<- ggplot(earningsSC,aes(x=date, y=value,)) + geom_line(color="#4f86f7") + labs(title = "Average Hourly Earnings in South Carolina", x="Date", y="Average Hourly Earnings",caption ="data from Fred") + scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + scale_y_continuous(label=scales::label_dollar(scale = 1)) + theme(axis.text.x = element_text(angle = 60, hjust = 1))
plot_earningsSC

#2020-2021 Earnings SC
head(earningsSC)
ts(earningsSC,start = 2020,end = 2021)

plot2_earningsSC<- ggplot(earningsSC,aes(x=date, y=value,)) + geom_line(color="#4f86f7") + labs(title = "Average Hourly Earnings in South Carolina", x="Date", y="Average Hourly Earnings",caption ="data from Fred") + scale_x_date(date_labels = "%m-%Y", date_breaks = "1 month", limits =c(as.Date("2020-01-01"),as.Date("2021-02-01"))) + scale_y_continuous(label=scales::label_dollar(scale = 1)) + theme(axis.text.x = element_text(angle = 60, hjust = 1))
plot2_earningsSC

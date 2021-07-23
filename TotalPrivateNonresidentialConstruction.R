library(fredr)
library(ggplot2)
library(ggcorrplot)
fredr_set_key("373a0327d00763e1205ce9d3d8941b50")

#Total Private Non-Residential Construction in US

totalprivatenonresidentialconstructiondata<- fredr(series_id= "PNRESCONS", observation_start = as.Date("2011-01-01"))

#plot
plot_totalprivatenonresidential<- ggplot(totalprivatenonresidentialconstructiondata,aes(x=date, y=value,)) + 
  geom_line(color="#4f86f7") + labs(title = "Total Private Nonresidential Construction Spending: United States", x="Date", 
                                    y="Millions",caption ="data from Fred") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_dollar(scale = 1)) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1))+theme_bw()
plot_totalprivatenonresidential

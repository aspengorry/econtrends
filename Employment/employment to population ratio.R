library(data.table)
library(dygraphs)
library(xts)
# FRED API key
fredr_set_key("58404cc3d72a6ed99bd9923872a64f4c")



empnational<-fredr(series_id = "EMRATIO", observation_start = as.Date("1976-10-01"))
empnational<- empnational[,c(1,3)]

emptopop<-data.table(empnational)
emp_p<- as.xts.data.table(emptopop)


graphThree<-dygraph(emp_p, xlab = "Date", ylab = "Employment to Population Ratio") %>%
  dySeries(name= "value", color ="#B22234") %>%
  dyOptions(drawPoints = TRUE, strokeWidth = 3, rightGap = TRUE) %>%
  dyLegend(width = 200, labelsSeparateLines = TRUE) %>%
  dyShading(from= "1980-01-01", to="1980-07-01", color = "#cecece")%>%
  dyShading(from= "1981-07-01", to="1982-11-01", color = "#cecece")%>%
  dyShading(from= "1990-07-01", to=" 1991-03-01", color = "#cecece")%>%
  dyShading(from= "2001-03-01", to="2001-11-01", color = "#cecece") %>%
  dyShading(from = "2007-12-01", to="2009-06-01", color = "#cecece") %>%
  dyShading(from = "2020-03-01", to= "2021-03-01" ,color = "#FDFD96")
graphThree
saveWidget(graphThree, "dygraphs Employment to Population.html")

library(dplyr)
library(dygraphs)
library(ggplot2)
library(widgetframe)
library(xts)
library(readxl)
library(tidyverse)
library(tidyr)

# monthly real (chained 2012 dollars) imports/exports: https://www.census.gov/foreign-trade/statistics/historical/index.html

ex_real <- read_excel("data/realexp.xls", col_names = FALSE, skip = 7)
im_real <- read_excel("data/realimp.xls", col_names = FALSE, skip = 7)

# label columns
colnames(ex_real) <- c("date", "total exports")
colnames(im_real) <- c("date", "total imports")

# want total ex/im over 2005-present
ex_real <- ex_real[155:392,1:2]
im_real <- im_real[155:392,1:2]

# combine exports and imports
trade_real <- cbind(ex_real[,1:2],im_real[,2])

# cut out bullshit year formatting
months <- c("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December")
trade_real <- trade_real[trade_real$date %in% months,]

# month names -> month numbers
trade_real$date <- recode(trade_real$date, "January"="01","February"="02","March"="03","April"="04","May"="05","June"="06","July"="07","August"="08","September"="09","October"="10","November"="11","December"="12")

# creating year vector
date <- c(rep("2005",12), rep("2006",12), rep("2007",12), rep("2008",12), rep("2009",12), rep("2010",12), rep("2011",12),
          rep("2012",12), rep("2013",12), rep("2014",12), rep("2015",12), rep("2016",12), rep("2017",12), rep("2018",12),
          rep("2019",12), rep("2020",12), rep("2021",12))

# merge year into dataframe
trade_real$date <- paste(date, trade_real$date, "01", sep = "-")

# convert factor -> POSIXt -> Date, merge back into dataframe
date <- strptime(trade_real$date, format = "%Y-%m-%d")
trade_real$date <- as.Date(date, format = "%Y-%m-%d")

# cut out unreported months
trade_real <- trade_real[!trade_real$`total exports` %in% NA,]

# scale dollars: millions -> billions
trade_real[,2:3] <- trade_real[,2:3]/1000

# GRAPH TIME
trade <- xts(trade_real, order.by = trade_real$date)
trade <- trade[,-c(1)]
dygraph_trade <- dygraph(trade, ylab = "Billions of 2012 Dollars", xlab = "Date") %>%
  dySeries("total exports", label = "Exports", color = "#B22234") %>%
  dySeries("total imports", label = "Imports", color = "#4f86f7") %>%
  dyOptions(drawPoints = TRUE, strokeWidth = 3, rightGap = TRUE) %>%
  dyLegend(width = 150, labelsSeparateLines = TRUE) %>%
  dyHighlight() %>%
  dyShading(from = "2007-12-01", to="2009-06-01", color = "#cecece") %>%
  dyShading(from = "2020-03-01", to= "2021-03-01" ,color = "#FDFD96")
dygraph_trade
saveWidget(dygraph_trade, "dygraph real trade.html")

trade <- trade_real %>%
  gather(key = "variable", value = "value", -date)
graph_trade <- ggplot(trade, aes(x = date, y = value)) + labs(x = "Date", y = "Billions of 2012 Dollars") +
  geom_rect(xmin=as.Date("2007-12-01"), xmax=as.Date("2009-06-01"), ymin=0, ymax=Inf, fill="#cecece", alpha=0.2) +
  geom_rect(xmin=as.Date("2020-03-01"), xmax=as.Date("2021-03-01"), ymin=0, ymax=Inf, fill="#cecece", alpha=0.2) +
  geom_line(aes(color=variable), size=1) +
  scale_color_manual(values = c("#B22234", "#4f86f7"))
graph_trade

ggsave("static real trade", plot = graph_trade, device = "png")
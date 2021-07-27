library(dplyr)
library(dygraphs)
library(ggplot2)
library(widgetframe)
library(xts)
library(readxl)
library(tidyverse)
library(tidyr)

# Monthly trade in goods and services: Exhibit 1
# https://www.census.gov/foreign-trade/Press-Release/current_press_release/index.html

# import, label, clean
trade_gs <- read_excel("data/exh1.xlsx", col_names = FALSE, skip = 9)
colnames(trade_gs) <- c("date", "total balance", "goods balance", 
                        "services balance", "total exports", "goods exports", 
                        "services exports", "total imports", "goods imports", 
                        "services imports")
trade_gs <- trade_gs[-c(13,14,15,28,29,44:46),]

# inputting revised figures -- this will change every release
trade_gs[28,2:10] <- trade_gs[38,2:10]
trade_gs <- trade_gs[-c(37:38),]

# scale dollars: millions -> billions
trade_gs[,2:10] <- trade_gs[,2:10]/1000

### date formatting ###
# inserting years
date <- c(rep("2019", 12), rep("2020", 12), rep("2021", 12))
date <- cbind(trade_gs[1:36,1],date)
colnames(date) <- c("month", "year")
trade_gs <- cbind(date, trade_gs[,2:10])

# recode months (will need to account for revised month(s) different names)
trade_gs$month <- recode(trade_gs$month, "January"="01","February"="02","March"="03","April"="04", "April (R)"="04","May"="05","June"="06","July"="07","August"="08","September"="09","October"="10","November"="11","December"="12")

# concatenate date
date <- paste(trade_gs$year, trade_gs$month, "01", sep = "-")
trade_gs <- cbind(date, trade_gs[,3:11])

# convert factor -> POSIXt -> Date, merge into dataframe
date <- strptime(trade_gs$date, format = "%Y-%m-%d")
trade_gs$date <- as.Date(date, format = "%Y-%m-%d")

# finally, cut out unreported months in year (this will change every release)
trade_gs <- trade_gs[-c(30:36),]

# graphs
# goods imports/exports
# dynamic
goods <- trade_gs[,c(1,6,9)]
goods <- xts(goods, order.by = goods$date)
goods <- goods[,-c(1)]
dygraph_goods <- dygraph(goods, ylab = "Billions of US Dollars", xlab = "Date") %>%
  dySeries("goods exports", label = "Exports", color = "#B22234") %>%
  dySeries("goods imports", label = "Imports", color = "#4f86f7") %>%
  dyOptions(drawPoints = TRUE, strokeWidth = 3, rightGap = TRUE) %>%
  dyLegend(width = 150, labelsSeparateLines = TRUE) %>%
  dyHighlight() %>%
  dyShading(from = "2020-02-01", to= "2020-04-01" ,color = "#cecece")
dygraph_goods
saveWidget(dygraph_goods, "goods-trade.html")

# static
goods <- trade_gs[,c(1,6,9)] %>%
  gather(key = "variable", value = "value", -date)
graph_goods <- ggplot(goods, aes(x = date, y = value)) + labs(x = "Date", y = "Billions of US Dollars") +
  geom_rect(xmin=as.Date("2020-02-01"), xmax=as.Date("2020-04-01"), ymin=0, ymax=Inf, fill="#cecece", alpha=0.2) +
  geom_line(aes(color=variable), size=1) +
  scale_color_manual(values = c("#B22234", "#4f86f7"))
graph_goods

# services imports/exports
# dynamic
services <- trade_gs[,c(1,7,10)]
services <- xts(services, order.by = services$date)
services <- services[,-c(1)]
dygraph_services <- dygraph(services, ylab = "Billions of US Dollars", xlab = "Date") %>%
  dySeries("services exports", label = "Exports", color = "#B22234") %>%
  dySeries("services imports", label = "Imports", color = "#4f86f7") %>%
  dyOptions(drawPoints = TRUE, strokeWidth = 3, rightGap = TRUE) %>%
  dyLegend(width = 150, labelsSeparateLines = TRUE) %>%
  dyHighlight() %>%
  dyShading(from = "2020-02-01", to= "2020-04-01" ,color = "#cecece")
dygraph_services
saveWidget(dygraph_services, "services-trade.html")

# static
services <- trade_gs[,c(1,7,10)] %>%
  gather(key = "variable", value = "value", -date)
graph_services <- ggplot(services, aes(x = date, y = value)) + labs(x = "Date", y = "Billions of US Dollars") +
  geom_rect(xmin=as.Date("2020-02-01"), xmax=as.Date("2020-04-01"), ymin=0, ymax=Inf, fill="#cecece", alpha=0.2) +
  geom_line(aes(color=variable), size=1) +
  scale_color_manual(values = c("#B22234", "#4f86f7"))
graph_services

# total (g+s) imports/exports
# dynamic
gs <- trade_gs[,c(1,5,8)]
gs <- xts(gs, order.by = gs$date)
gs <- gs[,-c(1)]
dygraph_gs <- dygraph(gs, ylab = "Billions of US Dollars", xlab = "Date") %>%
  dySeries("total exports", label = "Exports", color = "#B22234") %>%
  dySeries("total imports", label = "Imports", color = "#4f86f7") %>%
  dyOptions(drawPoints = TRUE, strokeWidth = 3, rightGap = TRUE) %>%
  dyLegend(width = 150, labelsSeparateLines = TRUE) %>%
  dyHighlight() %>%
  dyShading(from = "2020-02-01", to= "2020-04-01" ,color = "#cecece")
dygraph_gs
saveWidget(dygraph_gs, "total-trade.html")

# static
gs <- trade_gs[,c(1,5,8)] %>%
  gather(key = "variable", value = "value", -date)
graph_gs <- ggplot(gs, aes(x = date, y = value)) + labs(x = "Date", y = "Billions of US Dollars") +
  geom_rect(xmin=as.Date("2020-02-01"), xmax=as.Date("2020-04-01"), ymin=0, ymax=Inf, fill="#cecece", alpha=0.2) +
  geom_line(aes(color=variable), size=1) +
  scale_color_manual(values = c("#B22234", "#4f86f7"))
graph_gs

# total trade balance
# dynamic
tb <- trade_gs[,c(1,2)]
tb <- xts(tb, order.by = tb$date)
tb <- tb[,-c(1)]
dygraph_tb <- dygraph(tb, ylab = "Billions of US Dollars", xlab = "Date") %>%
  dySeries("total balance", label = "Trade Balance", color = "#B22234") %>%
  dyOptions(drawPoints = TRUE, strokeWidth = 3, rightGap = TRUE) %>%
  dyLegend(width = 150, labelsSeparateLines = TRUE) %>%
  dyHighlight() %>%
  dyShading(from = "2020-02-01", to= "2020-04-01" ,color = "#cecece")
dygraph_tb
saveWidget(dygraph_tb, "trade-balance.html")

# static
tb <- trade_gs[,c(1,2)] %>%
  gather(key = "variable", value = "value", -date)
graph_tb <- ggplot(tb, aes(x = date, y = value)) + labs(x = "Date", y = "Billions of US Dollars") +
  geom_rect(xmin=as.Date("2020-02-01"), xmax=as.Date("2020-04-01"), ymin=0, ymax=Inf, fill="#cecece", alpha=0.2) +
  geom_line(aes(color=variable), size=1.25) +
  scale_color_manual(values = "#4f86f7")
graph_tb
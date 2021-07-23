library(fredr)
library(ggplot2)
library(ggcorrplot)
fredr_set_key("373a0327d00763e1205ce9d3d8941b50")

##Upload Data
#Abbevile County Unrate
abbeville_unrate<- fredr(series_id= "SCABBE1URN", observation_start = as.Date("2011-01-01"))
#SC Unrate 
scunrate<- fredr(series_id= "SCUR", observation_start = as.Date("2011-01-01"))

#PLOT together
plot_SC_Abbeville_Unrate<- ggplot() +
  geom_line(data = abbeville_unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "Abbeville County,SC Unemployment Rate", x="Date", 
       y="Rate",caption ="data from Fred, Abbeville=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw(legend())
plot_SC_Abbeville_Unrate


#Aiken County, SC Unrate
aiken_unrate<- fredr(series_id= "SCAIKE0URN", observation_start = as.Date("2011-01-01"))
#SC Unrate 
scunrate<- fredr(series_id= "SCUR", observation_start = as.Date("2011-01-01"))

#Plot Together
plot_SC_Aiken_Unrate<- ggplot() +
  geom_line(data = aiken_unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "Aiken County,SC Unemployment Rate", x="Date", 
       y="Rate",caption ="data from Fred, Aiken=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_Aiken_Unrate

#Allendale County, SC Unrate
allendale_unrate<- fredr(series_id= "SCALLE5URN", observation_start = as.Date("2011-01-01"))
#SC Unrate 
scunrate<- fredr(series_id= "SCUR", observation_start = as.Date("2011-01-01"))

#Plot Together
plot_SC_Allendale_Unrate<- ggplot() +
  geom_line(data = allendale_unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "Allendale County,SC Unemployment Rate", x="Date", 
       y="Rate",caption ="data from Fred, Allendale=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_Allendale_Unrate

#Anderson County, SC Unrate
anderson_unrate<- fredr(series_id= "SCANDE7URN", observation_start = as.Date("2011-01-01"))
#SC Unrate 
scunrate<- fredr(series_id= "SCUR", observation_start = as.Date("2011-01-01"))

#Plot Together
plot_SC_Anderson_Unrate<- ggplot() +
  geom_line(data = anderson_unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "Anderson County,SC Unemployment Rate", x="Date", 
       y="Rate",caption ="data from Fred, Anderson=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_Anderson_Unrate

#Bamberg County, SC Unrate
bamberg_unrate<- fredr(series_id= "SCBAMB9URN", observation_start = as.Date("2011-01-01"))
#SC Unrate 
scunrate<- fredr(series_id= "SCUR", observation_start = as.Date("2011-01-01"))

#Plot Together
plot_SC_Bamberg_Unrate<- ggplot() +
  geom_line(data = bamberg_unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "Bamberg County,SC Unemployment Rate", x="Date", 
       y="Rate",caption ="data from Fred, Bamberg=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_Bamberg_Unrate

#Barnwell County, SC Unrate
barnwell_unrate<- fredr(series_id= "SCBARN1URN", observation_start = as.Date("2011-01-01"))
#SC Unrate 
scunrate<- fredr(series_id= "SCUR", observation_start = as.Date("2011-01-01"))

#Plot Together
plot_SC_Barnwell_Unrate<- ggplot() +
  geom_line(data = barnwell_unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "Barnwell County,SC Unemployment Rate", x="Date", 
       y="Rate",caption ="data from Fred, Barnwell=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_Barnwell_Unrate

#Beaufort County, SC Unrate
beaufort_unrate<- fredr(series_id= "SCBEAU5URN", observation_start = as.Date("2011-01-01"))
#SC Unrate 
scunrate<- fredr(series_id= "SCUR", observation_start = as.Date("2011-01-01"))

#Plot Together
plot_SC_Beaufort_Unrate<- ggplot() +
  geom_line(data = beaufort_unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "Beaufort County,SC Unemployment Rate", x="Date", 
       y="Rate",caption ="data from Fred, Beaufort=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_Beaufort_Unrate


#Berkeley County, SC Unrate
berkeley_unrate<- fredr(series_id= "SCBERK0URN", observation_start = as.Date("2011-01-01"))
#SC Unrate 
scunrate<- fredr(series_id= "SCUR", observation_start = as.Date("2011-01-01"))

#Plot Together
plot_SC_Berkeley_Unrate<- ggplot() +
  geom_line(data = berkeley_unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "Berkeley County,SC Unemployment Rate", x="Date", 
       y="Rate",caption ="data from Fred, Berkeley=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_Berkeley_Unrate

#Calhoun County, SC Unrate
calhoun_unrate<- fredr(series_id= "SCCALH7URN", observation_start = as.Date("2011-01-01"))
#SC Unrate 
scunrate<- fredr(series_id= "SCUR", observation_start = as.Date("2011-01-01"))

#Plot Together
plot_SC_Calhoun_Unrate<- ggplot() +
  geom_line(data = calhoun_unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "Calhoun County,SC Unemployment Rate", x="Date", 
       y="Rate",caption ="data from Fred, Calhoun=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_Calhoun_Unrate

#Charleston County, SC Unrate
charleston_unrate<- fredr(series_id= "SCCHAR9URN", observation_start = as.Date("2011-01-01"))
#SC Unrate 
scunrate<- fredr(series_id= "SCUR", observation_start = as.Date("2011-01-01"))

#Plot Together
plot_SC_Charleston_Unrate<- ggplot() +
  geom_line(data = charleston_unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "Charleston County,SC Unemployment Rate", x="Date", 
       y="Rate",caption ="data from Fred, Charleston=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_Charleston_Unrate

#Cherokee County, SC Unrate
cherokee_unrate<- fredr(series_id= "SCCHER1URN", observation_start = as.Date("2011-01-01"))
#SC Unrate 
scunrate<- fredr(series_id= "SCUR", observation_start = as.Date("2011-01-01"))

#Plot Together
plot_SC_Cherokee_Unrate<- ggplot() +
  geom_line(data = cherokee_unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "Cherokee County,SC Unemployment Rate", x="Date", 
       y="Rate",caption ="data from Fred, Cherokee=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_Cherokee_Unrate

#Chester County, SC Unrate
chester_unrate<- fredr(series_id= "SCCHES3URN", observation_start = as.Date("2011-01-01"))
#SC Unrate 
scunrate<- fredr(series_id= "SCUR", observation_start = as.Date("2011-01-01"))


#Plot Together
plot_SC_Chester_Unrate<- ggplot() +
  geom_line(data = chester_unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "Chester County,SC Unemployment Rate", x="Date", 
       y="Rate",caption ="data from Fred, Chester=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_Chester_Unrate

#Chesterfield County, SC Unrate
chesterfield_unrate<- fredr(series_id= "SCCHES5URN", observation_start = as.Date("2011-01-01"))
#SC Unrate 
scunrate<- fredr(series_id= "SCUR", observation_start = as.Date("2011-01-01"))

#Plot Together
plot_SC_Chesterfield_Unrate<- ggplot() +
  geom_line(data = chesterfield_unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "Chesterfield County,SC Unemployment Rate", x="Date", 
       y="Rate",caption ="data from Fred, Chesterfield=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_Chesterfield_Unrate

#Clarendon County, SC Unrate
clarendon_unrate<- fredr(series_id= "SCCLAR7URN", observation_start = as.Date("2011-01-01"))
#SC Unrate 
scunrate<- fredr(series_id= "SCUR", observation_start = as.Date("2011-01-01"))

#Plot Together
plot_SC_Clarendon_Unrate<- ggplot() +
  geom_line(data = clarendon_unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "Clarendon County,SC Unemployment Rate", x="Date", 
       y="Rate",caption ="data from Fred, Clarendon=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_Clarendon_Unrate

#Colleton County, SC Unrate
colleton_unrate<- fredr(series_id= "SCCOLL9URN", observation_start = as.Date("2011-01-01"))
#SC Unrate 
scunrate<- fredr(series_id= "SCUR", observation_start = as.Date("2011-01-01"))

#Plot Together
plot_SC_Colleton_Unrate<- ggplot() +
  geom_line(data = colleton_unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "Colleton County,SC Unemployment Rate", x="Date", 
       y="Rate",caption ="data from Fred, Colleton=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_Colleton_Unrate

#Darlington County, SC Unrate
darlington_unrate<- fredr(series_id= "SCDARL5URN", observation_start = as.Date("2011-01-01"))
#SC Unrate 
scunrate<- fredr(series_id= "SCUR", observation_start = as.Date("2011-01-01"))

#Plot Together
plot_SC_Darlington_Unrate<- ggplot() +
  geom_line(data = darlington_unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "Darlington County,SC Unemployment Rate", x="Date", 
       y="Rate",caption ="data from Fred, Darlington=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_Darlington_Unrate

#Dillon County, SC Unrate
dillon_unrate<- fredr(series_id= "SCDILL3URN", observation_start = as.Date("2011-01-01"))
#SC Unrate 
scunrate<- fredr(series_id= "SCUR", observation_start = as.Date("2011-01-01"))

#Plot Together
plot_SC_Dillon_Unrate<- ggplot() +
  geom_line(data = dillon_unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "Dillon County,SC Unemployment Rate", x="Date", 
       y="Rate",caption ="data from Fred, Dillon=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_Dillon_Unrate

#Dorchester County, SC Unrate
dorchester_unrate<- fredr(series_id= "SCDORC7URN", observation_start = as.Date("2011-01-01"))
#SC Unrate 
scunrate<- fredr(series_id= "SCUR", observation_start = as.Date("2011-01-01"))

#Plot Together
plot_SC_Dorchester_Unrate<- ggplot() +
  geom_line(data = dorchester_unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "Dorchester County,SC Unemployment Rate", x="Date", 
       y="Rate",caption ="data from Fred, Dorchester=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_Dorchester_Unrate

#Edgefield County, SC Unrate
edgefield_unrate<- fredr(series_id= "SCEDGE7URN", observation_start = as.Date("2011-01-01"))
#SC Unrate 
scunrate<- fredr(series_id= "SCUR", observation_start = as.Date("2011-01-01"))

#Plot Together
plot_SC_Edgefield_Unrate<- ggplot() +
  geom_line(data = edgefield_unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "Edgefield County,SC Unemployment Rate", x="Date", 
       y="Rate",caption ="data from Fred, Edgefield=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_Edgefield_Unrate

#Fairfield County, SC Unrate
fairfield_unrate<- fredr(series_id= "SCFAIR9URN", observation_start = as.Date("2011-01-01"))
#SC Unrate 
scunrate<- fredr(series_id= "SCUR", observation_start = as.Date("2011-01-01"))

#Plot Together
plot_SC_Fairfield_Unrate<- ggplot() +
  geom_line(data = fairfield_unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "Fairfield County,SC Unemployment Rate", x="Date", 
       y="Rate",caption ="data from Fred, Fairfield=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_Fairfield_Unrate

#Florence County, SC Unrate
florence_unrate<- fredr(series_id= "SCFLOR0URN", observation_start = as.Date("2011-01-01"))
#SC Unrate 
scunrate<- fredr(series_id= "SCUR", observation_start = as.Date("2011-01-01"))

#Plot Together
plot_SC_Florence_Unrate<- ggplot() +
  geom_line(data = florence_unrate, aes(x=date, y=value), color = "red dark") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "Florence County,SC Unemployment Rate", x="Date", 
       y="Rate",caption ="data from Fred, Florence=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_Florence_Unrate

#Georgetown County, SC Unrate
georgetown_unrate<- fredr(series_id= "SCGEOR3URN", observation_start = as.Date("2011-01-01"))
#SC Unrate 
scunrate<- fredr(series_id= "SCUR", observation_start = as.Date("2011-01-01"))

#Plot Together
plot_SC_Georgetown_Unrate<- ggplot() +
  geom_line(data = georgetown_unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "Georgetown County,SC Unemployment Rate", x="Date", 
       y="Rate",caption ="data from Fred, Georgetown=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_Georgetown_Unrate

#Greenville County, SC Unrate
greenville_unrate<- fredr(series_id= "SCGREE5URN", observation_start = as.Date("2011-01-01"))
#SC Unrate 
scunrate<- fredr(series_id= "SCUR", observation_start = as.Date("2011-01-01"))

#Plot Together
plot_SC_Greenville_Unrate<- ggplot() +
  geom_line(data = greenville_unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "Greenville County,SC Unemployment Rate", x="Date", 
       y="Rate",caption ="data from Fred, Greenville=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_Greenville_Unrate

#Greenwood County Unrate
greenwood_Unrate<- fredr(series_id= "SCGREE0URN", observation_start = as.Date("2011-01-01"))

#PLOT
plot_SC_Greenwood_Unrate<- ggplot() +
  geom_line(data = greenwood_Unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "Greenwood County, SC Unemployment Rate", x="Date", 
       y="Rate", caption ="data from Fred,  Greenwood=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_Greenwood_Unrate
#SAVE
ggsave("Greenwood_SC_UNRATE.png",
       device = "png")

#Hampton County Unrate
hampton_Unrate<- fredr(series_id= "SCHAMP9URN", observation_start = as.Date("2011-01-01"))

#PLOT
plot_SC_Hampton_Unrate<- ggplot() +
  geom_line(data = hampton_Unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "Hampton County, SC Unemployment Rate", x="Date", 
       y="Rate", caption ="data from Fred,  Hampton=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_Hampton_Unrate

ggsave("Hampton_SC_UNRATE.png",
       device = "png")

#HORRY County Unrate
Horry_Unrate<- fredr(series_id= "SCHORR1URN", observation_start = as.Date("2011-01-01"))

#PLOT
plot_SC_Horry_Unrate<- ggplot() +
  geom_line(data = Horry_Unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "Horry County, SC Unemployment Rate", x="Date", 
       y="Rate", caption ="data from Fred,  Horry=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_Horry_Unrate

ggsave("Horry_SC_UNRATE.png",
       device="png")

#JASPER
#JASPER County Unrate
Jasper_Unrate<- fredr(series_id= "SCJASP3URN", observation_start = as.Date("2011-01-01"))

#PLOT
plot_SC_Jasper_Unrate<- ggplot() +
  geom_line(data = Jasper_Unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "Jasper County, SC Unemployment Rate", x="Date", 
       y="Rate", caption ="data from Fred,  Jasper=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_Jasper_Unrate

ggsave("Jasper_SC_UNRATE.png",
       device="png")


# Kershaw

Kershaw_Unrate<- fredr(series_id= "SCKERS5URN", observation_start = as.Date("2011-01-01"))

#PLOT
plot_SC_Kershaw_Unrate<- ggplot() +
  geom_line(data = Kershaw_Unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "Kershaw County, SC Unemployment Rate", x="Date", 
       y="Rate", caption ="data from Fred,  Kershaw=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_Kershaw_Unrate

ggsave("Kershaw_SC_UNRATE.png",
       device="png")

Lancaster_Unrate<- fredr(series_id= "SCLANC7URN", observation_start = as.Date("2011-01-01"))

#PLOT
plot_SC_Lancaster_Unrate<- ggplot() +
  geom_line(data = Lancaster_Unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "Lancaster County, SC Unemployment Rate", x="Date", 
       y="Rate", caption ="data from Fred,  Lancaster=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_Lancaster_Unrate

ggsave("Lancaster_SC_UNRATE.png",
       device="png")



Laurens_Unrate<- fredr(series_id= "SCLAUR5URN", observation_start = as.Date("2011-01-01"))

#PLOT
plot_SC_Laurens_Unrate<- ggplot() +
  geom_line(data = Laurens_Unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "Laurens County, SC Unemployment Rate", x="Date", 
       y="Rate", caption ="data from Fred,  Laurens=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_Laurens_Unrate

ggsave("Laurens_SC_UNRATE.png",
       device="png")

Lee_Unrate<- fredr(series_id= "SCLEEC1URN", observation_start = as.Date("2011-01-01"))

#PLOT
plot_SC_Lee_Unrate<- ggplot() +
  geom_line(data = Lee_Unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "Lee County, SC Unemployment Rate", x="Date", 
       y="Rate", caption ="data from Fred,  Lee=Red SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_Lee_Unrate

ggsave("Lee_SC_UNRATE.png",
       device="png")

Lexington_Unrate<- fredr(series_id= "SCLEXI0URN", observation_start = as.Date("2011-01-01"))

#PLOT
plot_SC_Lexington_Unrate<- ggplot() +
  geom_line(data = Lexington_Unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "Lexington County, SC Unemployment Rate", x="Date", 
       y="Rate", caption ="data from Fred,  Lexington=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_Lexington_Unrate

ggsave("Lexington_SC_UNRATE.png",
       device="png")

Marion_Unrate<- fredr(series_id= "SCMARI7URN", observation_start = as.Date("2011-01-01"))

#PLOT
plot_SC_Marion_Unrate<- ggplot() +
  geom_line(data = Marion_Unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "Marion County, SC Unemployment Rate", x="Date", 
       y="Rate", caption ="data from Fred,  Marion=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_Marion_Unrate

ggsave("Marion_SC_UNRATE.png",
       device="png")

Marlboro_Unrate<- fredr(series_id= "SCMARL9URN", observation_start = as.Date("2011-01-01"))

#PLOT
plot_SC_Marlboro_Unrate<- ggplot() +
  geom_line(data = Marlboro_Unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "Marlboro County, SC Unemployment Rate", x="Date", 
       y="Rate", caption ="data from Fred,  Marlboro=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_Marlboro_Unrate

ggsave("Marlboro_SC_UNRATE.png",
       device="png")

McCormick_Unrate<- fredr(series_id= "SCMCCO5URN", observation_start = as.Date("2011-01-01"))

#PLOT
plot_SC_McCormick_Unrate<- ggplot() +
  geom_line(data = McCormick_Unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "McCormick County, SC Unemployment Rate", x="Date", 
       y="Rate", caption ="data from Fred,  McCormick=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_McCormick_Unrate

ggsave("McCormick_SC_UNRATE.png",
       device="png")


Newberry_Unrate<- fredr(series_id= "SCNEWB1URN", observation_start = as.Date("2011-01-01"))

#PLOT
plot_SC_Newberry_Unrate<- ggplot() +
  geom_line(data = Newberry_Unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "Newberry County, SC Unemployment Rate", x="Date", 
       y="Rate", caption ="data from Fred,  Newberry=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_Newberry_Unrate

ggsave("Newberry_SC_UNRATE.png",
       device="png")



Oconee_Unrate<- fredr(series_id= "SCOCON3URN", observation_start = as.Date("2011-01-01"))

#PLOT
plot_SC_Oconee_Unrate<- ggplot() +
  geom_line(data = Oconee_Unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "Oconee County, SC Unemployment Rate", x="Date", 
       y="Rate", caption ="data from Fred,  Oconee=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_Oconee_Unrate

ggsave("Oconee_SC_UNRATE.png",
       device="png")


Orangeburg_Unrate<- fredr(series_id= "SCORAN5URN", observation_start = as.Date("2011-01-01"))

#PLOT
plot_SC_Orangeburg_Unrate<- ggplot() +
  geom_line(data = Orangeburg_Unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "Orangeburg County, SC Unemployment Rate", x="Date", 
       y="Rate", caption ="data from Fred,  Orangeburg=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_Orangeburg_Unrate

ggsave("Orangeburg_SC_UNRATE.png",
       device="png")

Pickens_Unrate<- fredr(series_id= "SCPICK0URN", observation_start = as.Date("2011-01-01"))

#PLOT
plot_SC_Pickens_Unrate<- ggplot() +
  geom_line(data = Pickens_Unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "Pickens County, SC Unemployment Rate", x="Date", 
       y="Rate", caption ="data from Fred,  Pickens=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_Pickens_Unrate

ggsave("Pickens_SC_UNRATE.png",
       device="png")



Richland_Unrate<- fredr(series_id= "SCRICH9URN", observation_start = as.Date("2011-01-01"))

#PLOT
plot_SC_Richland_Unrate<- ggplot() +
  geom_line(data = Richland_Unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "Richland County, SC Unemployment Rate", x="Date", 
       y="Rate", caption ="data from Fred,  Richland=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_Richland_Unrate

ggsave("Richland_SC_UNRATE.png",
       device="png")






Saluda_Unrate<- fredr(series_id= "SCSALU1URN", observation_start = as.Date("2011-01-01"))

#PLOT
plot_SC_Saluda_Unrate<- ggplot() +
  geom_line(data = Saluda_Unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "Saluda County, SC Unemployment Rate", x="Date", 
       y="Rate", caption ="data from Fred,  Saluda=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_Saluda_Unrate

ggsave("Saluda_SC_UNRATE.png",
       device="png")




Spartanburg_Unrate<- fredr(series_id= "SCSPAR0URN", observation_start = as.Date("2011-01-01"))

#PLOT
plot_SC_Spartanburg_Unrate<- ggplot() +
  geom_line(data = Spartanburg_Unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "Spartanburg County, SC Unemployment Rate", x="Date", 
       y="Rate", caption ="data from Fred,  Spartanburg=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_Spartanburg_Unrate

ggsave("Spartanburg_SC_UNRATE.png",
       device="png")


Sumter_Unrate<- fredr(series_id= "SCSUMT5URN", observation_start = as.Date("2011-01-01"))

#PLOT
plot_SC_Sumter_Unrate<- ggplot() +
  geom_line(data = Sumter_Unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "Sumter County, SC Unemployment Rate", x="Date", 
       y="Rate", caption ="data from Fred,  Sumter=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_Sumter_Unrate

ggsave("Sumter_SC_UNRATE.png",
       device="png")




Union_Unrate<- fredr(series_id= "SCUNIO7URN", observation_start = as.Date("2011-01-01"))

#PLOT
plot_SC_Union_Unrate<- ggplot() +
  geom_line(data = Union_Unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "Union County, SC Unemployment Rate", x="Date", 
       y="Rate", caption ="data from Fred,  Union=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_Union_Unrate

ggsave("Union_SC_UNRATE.png",
       device="png")




Williamsburg_Unrate<- fredr(series_id= "SCWILL9URN", observation_start = as.Date("2011-01-01"))

#PLOT
plot_SC_Williamsburg_Unrate<- ggplot() +
  geom_line(data = Williamsburg_Unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "Williamsburg County, SC Unemployment Rate", x="Date", 
       y="Rate", caption ="data from Fred,  Williamsburg=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_Williamsburg_Unrate

ggsave("Williamsburg_SC_UNRATE.png",
       device="png")


York_Unrate<- fredr(series_id= "SCYORK5URN", observation_start = as.Date("2011-01-01"))

#PLOT
plot_SC_York_Unrate<- ggplot() +
  geom_line(data = York_Unrate, aes(x=date, y=value), color = "#B22234") + 
  geom_line(data = scunrate, aes(x=date, y=value), color = "#003366") +
  labs(title = "York County, SC Unemployment Rate", x="Date", 
       y="Rate", caption ="data from Fred,  York=Red, SC=Blue") + 
  scale_x_date(date_labels = "%m-%Y", date_breaks = "1 year") + 
  scale_y_continuous(labels = scales::label_percent(scale = 1,suffix ="%")) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) + theme_bw()
plot_SC_York_Unrate

ggsave("York_SC_UNRATE.png",
       device="png")

#Deliverable 1: Linear Regression to Predict MPG (30 points)

#3 load library dplyr
library(dplyr)

library(tidyverse)

#4 import MechaCar_mpg.csv as a dataframe
MechaCar <- read.csv(file="MechaCar_mpg.csv", check.names=F, stringsAsFactors=F)

#5 Perform linear regression using lm()
lm(mpg ~ vehicle_length +- vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar)#all six columns and the df/MechaCar, multiple linear regression

#6 Use summary(), determine p-value and r-squared vale for lm()
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar))#generate summary statistics



#Deliverable 2: Create Visualizations for the Trip Analysis (30 points)

#2 import Suspension_Coil.csv as a table
Suspension <- read.csv(file="Suspension_Coil.csv", check.names=F, stringsAsFactors=F)

#3 create total_summary df using summarize() to get mean, median, variance and sd for PSI column
total_summary <- Suspension %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance= var(PSI), SD= sd(PSI), .groups="keep")

#4 create lot_summary df using group_by() and the summarize() to group each manufacturing lot by mean, median, variance, and SD of coil'PSI
lot_summary<- Suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance= var(PSI), SD= sd(PSI), .groups="keep")



#Deliverable 3: T-Tests on Suspension Coils (20 points)

#1 t.test performed acrossed all lots with a mean of 1500
t.test(Suspension$PSI,mu = 1500)

#2 t.test performed on lot 1
t.test(subset(Suspension,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)

#2-b t.test performed on lot 2
t.test(subset(Suspension,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)

#2-c t.test performed on lot 3 
t.test(subset(Suspension,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)




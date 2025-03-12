#EPL accumulator predictor

#load in data

epl_res_110325 <- read.csv("E0.csv")

epl_res_110325$Date <- as.Date(epl_res_110325$Date, format = "%d/%m/%Y")

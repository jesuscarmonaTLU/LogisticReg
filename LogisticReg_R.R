bank.df <- read.csv("banks.csv")
reg<-glm(Financial.Condition ~ TotExp.Assets + TotLns.Lses.Assets, 
         data = bank.df, family = "binomial")
summary(reg)

# these are the values for Bank A 
logit <- c(1, 0.11, 0.6) %*% reg$coefficients
odds <- exp(logit)
prob <- odds/(1+odds)
# to do on your own on R … 
# display (screen) the values of logit, odds and prob

# these are the values for Bank B 
logitB <- c(1, 0.10, 0.56) %*% reg$coefficients
oddsB <- exp(logitB)
probB <- oddsB/(1+oddsB)


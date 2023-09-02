library(readr) 
data <- read_csv("/Users/hoangnha218/Desktop/IDS506 proj/finaldata.csv")


# perform the ANOVA test between Overall_Rating (target variable) with the following sanction reasons

#CME Continuing medical Education
fit_CME <- aov(data$Overall_Rating ~ data$`CME Continuing medical Education`)
p_value1 <- summary(fit)[[1]][["Pr(>F)"]][1]
summary(fit_CME)

#Improper Treatment
fit_Treat <- aov(data$Overall_Rating ~ data$`Improper Treatment Prescription`)
p_value2 <- summary(fit)[[1]][["Pr(>F)"]][1]
summary(fit_Treat)

#Patient Harm
fit_harm <- aov(data$Overall_Rating ~ data$`Patient Harm`)
p_value3 <- summary(fit)[[1]][["Pr(>F)"]][1]

summary(fit_harm)

#Immoral Contact
fit_contact <- aov(data$Overall_Rating ~ data$`Unprofessional Immoral Contact`)
p_value4 <- summary(fit)[[1]][["Pr(>F)"]][1]

summary(fit_contact)

#Financial Irregularities
fit_fin <- aov(data$Overall_Rating ~ data$`Financial Irregularities`)
p_value5 <- summary(fit)[[1]][["Pr(>F)"]][1]

summary(fit_fin)

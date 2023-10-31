library(mice)
Mul_Imp_10 <- mice(d, method = "norm.nob", m = 10)
Mul_Imp_10$imp #confirm which values are imputed
dat1 <- complete(Mul_Imp_10,1) 
dat1 <- lm(rwas ~ age + education + TIPI10 + gender, dat = dat1) %>% summary()
dat1_se <- dat1$coefficients[,'Std. Error']['age']
dat1_estimate <- dat1$coefficients[,'Estimate']['age']

dat1_se
dat1_estimate

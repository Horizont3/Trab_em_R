setwd("~/Documents/Probabilidade")
getwd()
arquivo <- read.table(file = "dupla_17.txt", sep = "", header = TRUE)
vai <- read.table(file = "caralho.txt")
summary(arquivo)
mean(arquivo)
median(arquivo)
max(arquivo)
range(arquivo[2])
SegQuarti1 <- quantile(arquivo[,1], probs = 0.25)
SegQuarti2 <- quantile(arquivo[,2], probs = 0.25)
TerQuarti1 <- quantile(arquivo[,1], probs = 0.75)
TerQuarti2 <- quantile(arquivo[,2], probs = 0.75)
InterQuart1 <- (TerQuarti1-SegQuarti1)
InterQuart2 <- (TerQuarti2-SegQuarti2)
Ampli_Temperatura <- range(arquivo[1])
Ampli_Temperatura <- (Ampli_Temperatura[2]-Ampli_Temperatura[1])
Ampli_Biogas <- range(arquivo[,2])
Ampli_Biogas <- (Ampli_Biogas[2]-Ampli_Biogas[1])
TFreq_Temper = table(arquivo[1])
TFreq_Biogas = table(arquivo[2])
TFreq_Biogas[TFreq_Biogas == max(TFreq_Biogas)]
TFreq_Temper[TFreq_Temper == max(TFreq_Temper)]
var(arquivo[1])
var(arquivo[2])
sd(arquivo[,1])
sd(arquivo[,2])
ordem <- order(arquivo[1])
ordem2 <- order(arquivo[2])
ordem2[order(arquivo)]
freq <- table(arquivo$temp)
freq_rel <- prop.table(freq)
classes <- c(1,2,3,4,5,6,7,8)
Temperatura <- arquivo$temp
Temperatura <- sort(Temperatura)

range(Temperatura)
Temperatura
Biogas <- arquivo$biog
Biogas <- sort(Biogas)
Biogas
TFreq_Temper <- c(7,5,7,11,9,8,2,3)
TFreq_Biogas <- c(10,3,3,6,13,9,5,3)
PMedio_Temper <- c(23.78,24.215,24.645,25.075,25.505,25.935,26.365,26.79)
PMedio_Biogas <- c(134.105,140.315,146.525,152.735,158.945,165.155,171.365,177.575)
hist(TFreq_Temper, density = 40, breaks = 8)
hist(TFreq_Biogas, breaks = 8)
TFreq_Biogas
TFreq_Temper <- vai
hist(TFreq_Temper, breaks = 8)
TFreq_Temper
ordem <- sort(ordem)
boxplot(arquivo[1])
boxplot(arquivo[2])
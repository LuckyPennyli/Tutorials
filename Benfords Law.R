library(benford.analysis)
library(BenfordTests)

invoice <- read.csv("CleansedWhiteCollar.csv")
Amount <- invoice$AMOUNT
Amount

trend <- benford(Amount, number.of.digits = 1, sign = "positive")
trend

plot(trend)

suspect <- getSuspects(trend, invoice, how.many = 5)
suspect

test <- BenfordTests::edist.benftest(Amount)
test

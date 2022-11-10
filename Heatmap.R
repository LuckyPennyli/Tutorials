library(corrplot)
library(tidyverse)

train_identity <- read.csv("train_identity.csv")
train_transaction <- read.csv("train_transaction.csv")

merged <- merge(train_identity, train_transaction, by="TransactionID")
merged_filtered <- merged %>% select(starts_with('V'))
first_150 <- merged_filtered[,1:150]
first_150

first_150[is.na(first_150)] <- 0

M = cor(first_150)

corrplot(M, method="color")

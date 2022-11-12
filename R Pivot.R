library(rpivotTable)

df = read.csv("WhiteCollarData.csv")
df1 = df[1:100,]
df1

rpivotTable(df1, rows = 'AMOUNT', columns = 'Invoice Number')

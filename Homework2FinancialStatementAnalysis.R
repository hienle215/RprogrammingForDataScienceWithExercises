#### Data
revenue <- c(14574.49,7606.46,8611.41,9175.41,8058.65,8105.44,11496.28,9766.09,10305.32,14379.96,10713.97,15433.50)
expenses <- c(12051.82,5695.07,12319.20,12089.72,8658.57,840.20,3285.73,5821.12,6976.93,16618.61,10054.37,3803.96)


#solutions

# profit of each month
profit <- revenue-expenses
profit

#profit after tax for each month (the tax rate is 30%)
tax <- round(profit*0.3)
tax
?round

profit.after.tax <- profit - tax
profit.after.tax

profit.margin <- profit.after.tax/revenue
profit.margin

#profit for each month
profit.margin <- round(profit.after.tax/revenue, 2) * 100
profit.margin


#good months-where the profit after tax was higher than the mean of the year
mean_pat <- mean(profit.after.tax)
mean_pat

good.months <- profit.after.tax > mean_pat
good.months

#bad momnths-where the profit after tax was lower than the mean of the year
bad.months <- !good.months
bad.months

#The best month-where the profit after tax was max for the year
best.motnh <- profit.after.tax == max(profit.after.tax)
best.motnh

#The worst month-where the profit fter tax was min for the year
worst.month <- profit.after.tax == min(profit.after.tax)
worst.month

#units of thousand
revenue.1000 <- round(revenue/1000)
revenue.1000

expenses.1000 <- round(expenses/1000)
expenses.1000

profit.1000 <- round(profit/1000)
profit.1000

SELECT stock_name, 
SUM(CASE WHEN operation = 'Sell' THEN price ELSE -1 * price END) AS capital_gain_loss
FROM Stocks GROUP BY stock_name

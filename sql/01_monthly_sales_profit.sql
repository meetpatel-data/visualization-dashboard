SELECT
    strftime('%Y-%m', "Order Date") AS month,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM orders
GROUP BY month
ORDER BY month;

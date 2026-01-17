-- Business Question:
-- Which cities are most profitable (excluding tiny volume)?

SELECT
  City,
  State,
  COUNT(DISTINCT "Order ID")          AS order_count,
  ROUND(SUM(CAST(Sales AS REAL)), 2)  AS total_sales,
  ROUND(SUM(CAST(Profit AS REAL)), 2) AS total_profit
FROM orders
GROUP BY City, State
HAVING COUNT(DISTINCT "Order ID") >= 10
ORDER BY total_profit DESC
LIMIT 10;

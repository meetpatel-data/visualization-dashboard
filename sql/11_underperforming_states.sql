-- Business Question:
-- Which states underperform in sales and profit?

SELECT
  State,
  ROUND(SUM(CAST(Sales AS REAL)), 2)  AS total_sales,
  ROUND(SUM(CAST(Profit AS REAL)), 2) AS total_profit
FROM orders
GROUP BY State
ORDER BY total_profit ASC
LIMIT 10;

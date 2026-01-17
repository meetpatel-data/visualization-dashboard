-- Business Question:
-- How do returns impact profitability?

SELECT
  Returns,
  COUNT(*)                            AS total_orders,
  ROUND(SUM(CAST(Sales AS REAL)), 2)  AS total_sales,
  ROUND(SUM(CAST(Profit AS REAL)), 2) AS total_profit
FROM orders
GROUP BY Returns;

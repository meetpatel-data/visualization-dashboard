-- Business Question:
-- Which customers generate the most profit overall?

SELECT
  "Customer ID" AS customer_id,
  "Customer Name" AS customer_name,
  COUNT(DISTINCT "Order ID")          AS order_count,
  ROUND(SUM(CAST(Sales AS REAL)), 2)  AS total_sales,
  ROUND(SUM(CAST(Profit AS REAL)), 2) AS total_profit
FROM orders
GROUP BY "Customer ID", "Customer Name"
ORDER BY total_profit DESC
LIMIT 10;

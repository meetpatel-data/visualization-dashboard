SELECT
  "Customer ID" AS customer_id,
  "Customer Name" AS customer_name,
  ROUND(SUM(CAST(Sales AS REAL)), 2)  AS total_sales,
  ROUND(SUM(CAST(Profit AS REAL)), 2) AS total_profit,
  COUNT(DISTINCT "Order ID")          AS order_count
FROM orders
GROUP BY "Customer ID", "Customer Name"
ORDER BY total_sales DESC
LIMIT 10;

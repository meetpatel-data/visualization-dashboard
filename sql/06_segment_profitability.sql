-- Business Question:
-- Which customer segments are most profitable?

SELECT
  Segment,
  ROUND(SUM(CAST(Sales AS REAL)), 2)  AS total_sales,
  ROUND(SUM(CAST(Profit AS REAL)), 2) AS total_profit,
  COUNT(DISTINCT "Customer ID")       AS customer_count
FROM orders
GROUP BY Segment
ORDER BY total_profit DESC;

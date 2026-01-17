-- Business Question:
-- Are there seasonal sales patterns?

SELECT
  substr("Order Date", 4, 2) AS month,
  ROUND(SUM(CAST(Sales AS REAL)), 2) AS total_sales
FROM orders
GROUP BY month
ORDER BY month;

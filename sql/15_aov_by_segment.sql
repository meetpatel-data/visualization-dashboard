-- Business Question:
-- What is average order value by segment?

SELECT
  Segment,
  COUNT(DISTINCT "Order ID") AS order_count,
  ROUND(SUM(CAST(Sales AS REAL)), 2) AS total_sales,
  ROUND(
    SUM(CAST(Sales AS REAL)) / NULLIF(COUNT(DISTINCT "Order ID"), 0),
    2
  ) AS avg_order_value
FROM orders
GROUP BY Segment
ORDER BY avg_order_value DESC;

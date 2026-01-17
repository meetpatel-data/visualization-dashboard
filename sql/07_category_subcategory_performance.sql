-- Business Question:
-- Which product categories and sub-categories perform best?

SELECT
  Category,
  "Sub-Category",
  ROUND(SUM(CAST(Sales AS REAL)), 2)  AS total_sales,
  ROUND(SUM(CAST(Profit AS REAL)), 2) AS total_profit
FROM orders
GROUP BY Category, "Sub-Category"
ORDER BY total_sales DESC;

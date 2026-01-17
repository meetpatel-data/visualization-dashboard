-- Business Question:
-- Which categories have the best profit margins?

SELECT
  Category,
  ROUND(SUM(CAST(Sales AS REAL)), 2)  AS total_sales,
  ROUND(SUM(CAST(Profit AS REAL)), 2) AS total_profit,
  ROUND(
    100.0 * SUM(CAST(Profit AS REAL)) / NULLIF(SUM(CAST(Sales AS REAL)), 0),
    2
  ) AS profit_margin_pct
FROM orders
GROUP BY Category
ORDER BY profit_margin_pct DESC;

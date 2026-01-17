-- Business Question:
-- Which categories have higher return rates?

SELECT
  Category,
  COUNT(*) AS total_rows,
  SUM(CASE WHEN Returns = 'Yes' THEN 1 ELSE 0 END) AS returned_rows,
  ROUND(
    100.0 * SUM(CASE WHEN Returns = 'Yes' THEN 1 ELSE 0 END) / NULLIF(COUNT(*), 0),
    2
  ) AS return_rate_pct,
  ROUND(SUM(CAST(Profit AS REAL)), 2) AS total_profit
FROM orders
GROUP BY Category
ORDER BY return_rate_pct DESC;

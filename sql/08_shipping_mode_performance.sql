-- Business Question:
-- Does shipping mode affect sales and profitability?

SELECT
  "Ship Mode",
  ROUND(SUM(CAST(Sales AS REAL)), 2)  AS total_sales,
  ROUND(SUM(CAST(Profit AS REAL)), 2) AS total_profit,
  COUNT(*)                            AS total_orders
FROM orders
GROUP BY "Ship Mode"
ORDER BY total_sales DESC;

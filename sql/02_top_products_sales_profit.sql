SELECT
	"PRODUCT NAME" AS product_name,
	ROUND(SUM(CAST(Sales AS REAL)), 2)  AS total_sales,
	ROUND(SUM(CAST(Profit AS REAL)), 2) AS total_profit,
	SUM(CAST(Quantity AS INTEGER))		AS total_quantity
FROM orders
GROUP BY "Product Name"
ORDER BY total_sales DESC
LIMIT 10;
-- Business Question:
-- How do sales and profit vary by region?

SELECT
	REGION,
	round(sum(CAST(SALES AS REAL)), 2) AS TOTAL_SALES,
	round(sum(CAST(SALES AS REAL)), 2) AS TOTAL_PROFITS,
	SUM(CAST(QUANTITY AS INTEGER))	   AS TOTAL_QUANTITY
FROM orders
GROUP BY REGION
ORDER BY TOTAL_SALES DESC;

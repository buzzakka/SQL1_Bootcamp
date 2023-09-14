SELECT
	address,
	CAST(ROUND(MAX(age::numeric) - MIN(age::numeric) / MAX(age::numeric), 2) AS real) AS formula,
	CAST(ROUND(AVG(age::numeric), 2) AS real) AS average,
	MAX(age::numeric) - (MIN(age::numeric) / MIN(age::numeric)) > AVG(age::numeric) AS comprasion
FROM person
GROUP BY address
ORDER BY address;
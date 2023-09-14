SELECT
	name,
	COUNT(person_order.id) AS count_of_orders,
	CAST(ROUND(AVG(price), 2) AS real) AS average_price,
	CAST(MAX(price) AS real) AS max_price,
	CAST(MIN(price) AS real) AS min_price
FROM person_order
JOIN menu ON menu.id = menu_id
JOIN pizzeria ON pizzeria.id = pizzeria_id
GROUP BY pizzeria_id, name
ORDER BY name;
WITH visit_table AS (
	SELECT name, COUNT(person_visits.id), 'visit' AS action_type
	FROM person_visits
	RIGHT JOIN pizzeria ON pizzeria.id = pizzeria_id
	GROUP BY pizzeria_id, name
	ORDER BY count DESC
), order_table AS (
	SELECT pizzeria.name, COUNT(person_order.id), 'order' AS action_type
	FROM person_order
	JOIN menu ON menu_id = menu.id
	RIGHT JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
	GROUP BY pizzeria_id, pizzeria.name
	ORDER BY count DESC
)
SELECT name, SUM(count) AS total_count
FROM (
	SELECT * FROM order_table
	UNION
	SELECT * FROM visit_table
) AS result_table
GROUP BY (name)
ORDER BY total_count DESC, name;
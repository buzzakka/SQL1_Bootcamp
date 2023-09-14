WITH visit_table AS (
	SELECT name, COUNT(person_visits.id), 'visit' AS action_type
	FROM person_visits
	RIGHT JOIN pizzeria ON pizzeria.id = pizzeria_id
	GROUP BY pizzeria_id, name
	ORDER BY count DESC
	LIMIT 3
), order_table AS (
	SELECT pizzeria.name, COUNT(person_order.id), 'order' AS action_type
	FROM person_order
	JOIN menu ON menu_id = menu.id
	RIGHT JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
	GROUP BY pizzeria_id, pizzeria.name
	ORDER BY count DESC
	LIMIT 3
)
SELECT * FROM (
	SELECT * FROM order_table
	UNION
	SELECT * FROM visit_table
) AS result_table
ORDER BY action_type, count DESC;
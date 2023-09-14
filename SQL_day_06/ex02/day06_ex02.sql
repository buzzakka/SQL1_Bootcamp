SELECT
	person.name,
	pizza_name,
	price,
	CAST(price * (100 - discount) / 100 as real) AS discount_price,
	pizzeria.name as pizzeria_name
FROM person_order
JOIN person ON person_id = person.id
JOIN menu on menu.id = person_order.menu_id
JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
JOIN person_discounts ON person_discounts.person_id = person.id AND person_discounts.pizzeria_id = menu.pizzeria_id
ORDER BY name, pizza_name;
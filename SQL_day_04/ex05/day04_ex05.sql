CREATE VIEW v_price_with_discount AS
(
	SELECT DISTINCT name, pizza_name, price, ROUND(0.9 * price) AS discount_price
	FROM person_order
	JOIN person ON person_order.person_id = person.id
	JOIN menu ON person_order.menu_id = menu.id
	ORDER BY name, pizza_name
);
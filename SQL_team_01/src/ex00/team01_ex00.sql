WITH nb AS (
	SELECT user_id, SUM(money) as sum, type, currency_id
	FROM balance
	GROUP by user_id, type, currency_id
), nc AS (
	SELECT currency.id, currency.name, currency.rate_to_usd as last_rate FROM currency
	JOIN (SELECT id, name, MAX(updated) FROM currency GROUP BY id, name) as c
	ON currency.id = c.id AND currency.name = c.name AND currency.updated = c.max
)
SELECT
	COALESCE("user".name, 'not defined') AS name,
	COALESCE("user".lastname, 'not defined') AS lastname,
	nb.type AS type,
	nb.sum AS volume,
	COALESCE(nc.name, 'not defined') AS currency_name,
	COALESCE(nc.last_rate, 1) AS last_rate_to_usd,
	CAST(ROUND(nb.sum * COALESCE(nc.last_rate, 1), 6) AS real) AS total_volume_in_usd
FROM "user"
FULL JOIN nb ON nb.user_id = "user".id
LEFT JOIN nc ON nc.id = nb.currency_id
ORDER BY name DESC, lastname, type;
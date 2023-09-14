WITH RECURSIVE p(last_point, tour) AS (
	SELECT
		point1,
		ARRAY[point1]::char(1)[], 0 AS cost
	FROM graph
	WHERE point1 = 'a'
	
	UNION
	
	SELECT
		graph.point2 AS last_point,
		(p.tour || ARRAY[graph.point2])::char(1)[] AS tour,
		p.cost + graph.cost
	FROM graph, p
	WHERE graph.point1 = p.last_point
	AND NOT graph.point2 = ANY(p.tour)
), result_path AS (
	SELECT
		array_append(tour, 'a') AS tour,
		cost + (SELECT cost FROM graph WHERE point1 = p.last_point AND point2 = 'a') as cost
	FROM p
	WHERE (SELECT array_length(p.tour, 1)) = 4
)
SELECT
	cost as total_cost,
	tour
FROM result_path
ORDER BY total_cost, tour;
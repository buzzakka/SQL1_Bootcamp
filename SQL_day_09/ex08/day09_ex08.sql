CREATE OR REPLACE FUNCTION fnc_fibonacci(pstop NUMERIC DEFAULT 10) RETURNS TABLE(NUM NUMERIC) AS $$
	WITH RECURSIVE rec AS (
		SELECT
			0 AS p_e,
			1 AS n_e
		UNION ALL
		SELECT
			n_e AS p_e,
			p_e + n_e AS n_e
		FROM rec
		WHERE n_e < pstop
	)
	SELECT p_e FROM rec;
$$ LANGUAGE SQL;

SELECT * FROM fnc_fibonacci(100);
SELECT * FROM fnc_fibonacci();
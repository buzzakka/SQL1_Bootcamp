CREATE INDEX idx_person_name ON person (UPPER(name));
SET enable_seqscan TO OFF;
EXPLAIN ANALYZE
SELECT age
FROM person
WHERE UPPER(name) = 'ANDREY';
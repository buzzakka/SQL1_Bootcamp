SELECT person.name AS person_name1, p2_t.name AS person_name2, person.address AS common_address
FROM person
CROSS JOIN person AS p2_t
WHERE person.id > p2_t.id AND person.name <> p2_t.name AND person.address = p2_t.address
ORDER BY person_name1, person_name2, common_address;
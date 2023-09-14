SELECT name, COUNT(person_visits.id) AS count_of_visits
FROM person_visits
JOIN person ON person.id = person_id
GROUP BY person_id, name
HAVING COUNT(person_visits.id) > 3;
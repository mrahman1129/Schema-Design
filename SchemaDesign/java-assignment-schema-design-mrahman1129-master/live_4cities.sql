SELECT city, COUNT(*) AS count
FROM Person
INNER JOIN Location ON Person.location_id = Location.id
GROUP BY city;

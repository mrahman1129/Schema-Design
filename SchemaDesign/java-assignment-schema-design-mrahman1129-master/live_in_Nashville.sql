SELECT firstName, lastName, city, state
FROM Person
INNER JOIN Location ON Person.location_id = Location.id
WHERE city = 'Nashville' AND state = 'Tennessee';



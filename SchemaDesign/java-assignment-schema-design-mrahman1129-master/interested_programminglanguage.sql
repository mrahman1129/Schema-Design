SELECT firstName, lastName, city, state, title AS interest
FROM Person
INNER JOIN Location ON Person.location_id = Location.id
INNER JOIN Person_Interest ON Person.id = Person_Interest.person_id
INNER JOIN Interest ON Person_Interest.interest_id = Interest.id
WHERE city = 'Nashville' AND state = 'Tennessee' AND title = 'Programming';

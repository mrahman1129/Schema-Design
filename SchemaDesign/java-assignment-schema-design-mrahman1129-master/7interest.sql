SELECT i.title, COUNT(pi.*) AS count
FROM Interest AS i
LEFT JOIN Person_Interest AS pi
ON i.id = pi.interest_id
GROUP BY i.title;

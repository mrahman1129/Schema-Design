DELETE FROM public.person_interest
WHERE person_id IN (
    SELECT id FROM public.person
    WHERE firstname IN ('Hilton', 'Alanna')
    AND lastname IN ('O’Hanley', 'Spino')
);

DELETE FROM public.person
WHERE firstname IN ('Hilton', 'Alanna')
AND lastname IN ('O’Hanley', 'Spino');

UPDATE public.person
SET age = age + 1
WHERE firstname IN ('Chickie', 'Winnie', 'Edouard', 'Courtney', 'Melva', 'Isa', 'Abbott')
AND lastname IN ('Ourtic', 'Whines', 'Lorimer', 'Holley', 'Lanham', 'Slight', 'Fisbburne');

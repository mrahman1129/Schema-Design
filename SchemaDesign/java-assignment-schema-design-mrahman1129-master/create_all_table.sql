CREATE TABLE IF NOT EXISTS public.interest (
    id SERIAL PRIMARY KEY,
    title text COLLATE pg_catalog."default"
);

CREATE TABLE IF NOT EXISTS public.location (
    id SERIAL PRIMARY KEY,
    city text COLLATE pg_catalog."default",
    state text COLLATE pg_catalog."default",
    country text COLLATE pg_catalog."default"
);

CREATE TABLE IF NOT EXISTS public.person (
    id SERIAL PRIMARY KEY,
    firstname text COLLATE pg_catalog."default",
    lastname text COLLATE pg_catalog."default",
    age integer,
    location_id integer,
    CONSTRAINT fk_location FOREIGN KEY (location_id) REFERENCES public.location(id)
);

CREATE TABLE IF NOT EXISTS public.person_interest (
    person_id integer,
    interest_id integer,
    CONSTRAINT fk_person FOREIGN KEY (person_id) REFERENCES public.person(id),
    CONSTRAINT fk_interest FOREIGN KEY (interest_id) REFERENCES public.interest(id)
);

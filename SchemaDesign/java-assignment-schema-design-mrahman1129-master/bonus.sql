SELECT 
    CASE 
        WHEN age BETWEEN 20 AND 30 THEN '20-30'
        WHEN age BETWEEN 31 AND 40 THEN '30-40'
        WHEN age BETWEEN 41 AND 50 THEN '40-50'
        ELSE 'Other'
    END AS age_range,
    COUNT(*)
FROM public.person
GROUP BY age_range;

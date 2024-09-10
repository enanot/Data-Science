


-- Quitar duplicados explicacion professor

-- 1
delete FROM movies m1 
INNER JOIN movies m2 ON m1.title = m2.title AND m1.prod_year = m2.prod_year and m1.id < m2.id;


-- 2
update movies m1
JOIN movies m2 ON m1.title = m2.title
AND m1.prod_year > m2.prod_year
SET m1.title = CONCAT(m1.title, ' (2)')
;
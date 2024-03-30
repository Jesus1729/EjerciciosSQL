/*
Desafío:
Generar una lista de bicicletas con rango de precio entre $400 y $600.
 */
 
SELECT 
    *
FROM
    producto p
WHERE
    p.precio BETWEEN 400 AND 600
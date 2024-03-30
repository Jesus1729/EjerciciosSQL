/*
Desafío:
Descubrir qué bicicletas tienen un precio por encima del promedio de las demás.
 */
 
 SELECT 
    *
FROM
    producto
WHERE
    precio > (SELECT 
            AVG(precio) AS precio_promedio
        FROM
            producto)
ORDER BY precio;
 

/* 
Desafío: 
Actualizar la base de datos, eliminando los cines no disponibles.
*/
set sql_safe_updates = 0;

DELETE FROM cine.cine 
WHERE
    id NOT IN (SELECT DISTINCT
        c.id
    FROM
        (SELECT 
            c.id
        FROM
            cine.cine c
        INNER JOIN cine.cartelera cart ON c.id = cart.id_cine) AS c);

set sql_safe_updates = 1;



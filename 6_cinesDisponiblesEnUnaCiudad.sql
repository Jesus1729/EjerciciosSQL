/* 
Desafío: 
Crear una lista con los cines disponibles en el momento en Dublín, Irlanda.
*/

SELECT DISTINCT
    c.*
FROM
    cine.cine c
        INNER JOIN
    cine.cartelera cart ON c.id = cart.id_cine
WHERE
    c.estado = 'Dublín'
        AND c.pais = 'Irlanda';

-- La siguiente solución se da en el curso
SELECT 
    c.nombre, c.estado, c.pais, p.nombre
FROM
    pelicula p
        INNER JOIN
    cartelera ca ON p.id = ca.id_pelicula
        INNER JOIN
    cine c ON c.id = ca.id_cine
WHERE
    c.estado = 'Dublin'
        AND c.pais = 'Irlanda';
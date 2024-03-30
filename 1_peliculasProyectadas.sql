/* 
Desafío: 
¿Qué películas se están proyectando?
*/

SELECT DISTINCT
    p.nombre
FROM
    cine.pelicula p
        INNER JOIN
    cine.cartelera c ON p.id = c.id_pelicula

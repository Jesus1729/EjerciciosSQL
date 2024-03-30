/* 
Desafío: 
Generar una lista de películas que cumplan:
- Genero: suspenso
- Clasificacion de edad 18
- Ciudad de Madrid
*/

SELECT 
    c.nombre, c.estado, c.pais, p.nombre
FROM
    pelicula p
        INNER JOIN
    cartelera ca ON p.id = ca.id_pelicula
        INNER JOIN
    cine c ON c.id = ca.id_cine
        INNER JOIN
    genero g ON g.id = p.id_genero
WHERE
    c.estado = 'Madrid'
        AND p.clasificacion_edad = 18
        AND g.nombre = 'Suspenso';


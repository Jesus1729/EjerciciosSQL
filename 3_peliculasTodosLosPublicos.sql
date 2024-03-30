/* 
Desafío: 
- Presentar las películas actualmente en proyección que estén clasificadas como aptas para todo público.
*/

SELECT DISTINCT
    p.id, p.nombre
FROM
    cine.pelicula p
        INNER JOIN
    cine.cartelera c ON p.id = c.id_pelicula
WHERE 
	p.clasificacion_edad = 0;
    

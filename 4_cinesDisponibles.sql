/* 
Desafío: 
Crear una lista con los cines disponibles en el momento.
*/

SELECT DISTINCT
    c.*
FROM
    cine.cine c
        INNER JOIN
    cine.cartelera cart ON c.id = cart.id_cine;
    
    
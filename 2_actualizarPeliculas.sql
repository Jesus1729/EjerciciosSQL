/* 
Desafío: 
- Para las películas que tengan NULL en 'clasificación de edad' cambiarlo por 0.
*/

set sql_safe_updates = 0;
UPDATE cine.pelicula p 
SET 
    p.clasificacion_edad = 0
WHERE
    p.clasificacion_edad IS NULL;
set sql_safe_updates = 1;

-- Verificamos que se hayan hecho los cambios
SELECT 
    *
FROM
    cine.pelicula;



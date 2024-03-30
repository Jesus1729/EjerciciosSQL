/* 
Desafío: 
Asociar el género a cada una de las películas de la base de datos:
- Agregar el campo id_genero a la tabla de películas
- Asociarlo con la tabla de género
- Peliculas con id 1 a 10: Terror
- Peliculas con id 11 a 20: Ciencia ficción
- Peliculas con id 20 a 45: Comedia
- Peliculas con id 46 a 55: Suspenso
- Demás: Acción
*/

ALTER TABLE pelicula 
ADD COLUMN id_genero INT NULL AFTER clasificacion_edad;

ALTER TABLE pelicula
ADD CONSTRAINT fk_pelicula_genero
FOREIGN KEY (id_genero)
REFERENCES genero(id);

set sql_safe_updates = 0;

UPDATE pelicula 
SET 
    id_genero = CASE
        WHEN
            id BETWEEN 1 AND 10
        THEN
            (SELECT 
                    id
                FROM
                    genero
                WHERE
                    nombre = 'Terror')
        WHEN
            id BETWEEN 11 AND 20
        THEN
            (SELECT 
                    id
                FROM
                    genero
                WHERE
                    nombre = 'Ciencia Ficción')
        WHEN
            id BETWEEN 21 AND 45
        THEN
            (SELECT 
                    id
                FROM
                    genero
                WHERE
                    nombre = 'Comedia')
        WHEN
            id BETWEEN 46 AND 55
        THEN
            (SELECT 
                    id
                FROM
                    genero
                WHERE
                    nombre = 'Suspenso')
        ELSE (SELECT 
                id
            FROM
                genero
            WHERE
                nombre = 'Acción')
    END;

set sql_safe_updates = 1;



/* 
Desafío: 
Incluir la tabla género de las películas.
Tendrá un campo id de tipo integer, autoincremental y llave primaria.
Y un campo nombre de tipo VARCHAR de tamaño 100.
Los géneros que debe tener son:
1. Acción
2. Aventura
3. Ciencia Ficción
4. Comedia
5. Drama
6. Fantasía
7. Suspenso
8. Terror
*/

CREATE TABLE genero (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100)
);

INSERT INTO genero (nombre) VALUES
    ('Acción'),
    ('Aventura'),
    ('Ciencia Ficción'),
    ('Comedia'),
    ('Drama'),
    ('Fantasía'),
    ('Suspenso'),
    ('Terror');



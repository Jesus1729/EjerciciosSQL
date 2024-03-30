/*
Desafío:
Lista de bicicletas híbridas y urbanas disponibles en Bicitemp 
 */
 
SELECT 
    p.nombre, p.precio
FROM
    producto p
        INNER JOIN
    categoria c ON c.id = p.id_categoria
WHERE
    c.nombre IN ('Urbanas' , 'Híbridas')
-- Desafío: Generar una lista de todas las bicicletas de tipo montaña que no pertenezcan a la 
-- marca Escoza.

SELECT 
    p.id, p.nombre
FROM
    producto p
        INNER JOIN
    categoria c ON p.id_categoria = c.id
        INNER JOIN
    marca m ON m.id = p.id_marca
WHERE
    c.nombre = 'Montaña'
        AND m.nombre != 'Escoza'


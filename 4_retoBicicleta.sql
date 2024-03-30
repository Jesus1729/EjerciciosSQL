/*
Desafío:
Obtener una lista de clientes cuyas facturas hayan tenido un monto
total igual o superior a $4500.
 */
SELECT 
    SUM(df.cantidad * df.precio_unitario) AS monto,
    c.id,
    c.nombre,
    c.apellido,
    c.email,
    f.id AS factura
FROM
    cliente c
        INNER JOIN
    factura f ON c.id = f.id_cliente
        INNER JOIN
    detalle_factura df ON f.id = df.id_factura
GROUP BY c.id , f.id
HAVING monto >= 4500;


  
  

 
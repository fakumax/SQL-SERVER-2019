/*Serie 7 TP*/
--7. Funciones agregadas con agrupación. 
--Renombrar las columnas obtenidas por función agregada. 

-- 7.7. Informar el total de regalías obtenidas por cada título que haya tenido 40 o más unidades
-- vendidas. Mostrar el título y el monto en pesos de las regalías y ordenar por mayor regalía
-- primero.

USE editorial;

SELECT titulos.titulo, SUM(cantidad*precio*titulos.regalias/100) AS 'Regalias'
FROM titulos, ventas  
WHERE titulos.titulo_id = ventas.titulo_id
GROUP BY titulos.titulo_id,titulos.titulo
HAVING SUM(ventas.cantidad)>=40
ORDER BY regalias DESC

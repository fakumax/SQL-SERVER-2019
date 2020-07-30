/*Serie 7 TP*/
--7. Funciones agregadas con agrupación. 
--Renombrar las columnas obtenidas por función agregada. 

-- 7.2. Informar el total de unidades vendidas por número de orden del almacén 7131. 
--Mostrar número de orden y total vendido.

USE editorial;

SELECT numero_orden,SUM(cantidad) AS 'Total Vendido'
FROM ventas
WHERE almacen_id='7131'
GROUP BY numero_orden
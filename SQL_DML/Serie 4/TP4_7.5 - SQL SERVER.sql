/*Serie 7 TP*/
--7. Funciones agregadas con agrupación. 
--Renombrar las columnas obtenidas por función agregada. 

-- 7.5. Mostrar los tres primeros géneros más vendidos. Mostrar género y total de ventas ordenado
-- por mayor total de venta.

USE editorial;
 
SELECT TOP 3 genero,SUM(venta_anual) AS 'Total de ventas'
FROM titulos
GROUP BY genero
ORDER BY SUM(venta_anual) DESC
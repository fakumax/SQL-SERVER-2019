/*Serie 7 TP*/
--7. Funciones agregadas con agrupación. 
--Renombrar las columnas obtenidas por función agregada. 

-- 7.3. Informar la última orden generada por cada almacén con forma de pago a 30 días y 60 días.
-- Mostrar código de almacén, fecha de la orden y forma de pago. Ordenar por fecha de orden.

USE editorial;

SELECT almacen_id,MAX(fecha_orden) AS 'Fecha de orden',forma_pago
FROM ventas
WHERE forma_pago= '30 días' OR forma_pago='60 días'
GROUP BY almacen_id,forma_pago
ORDER BY MAX(fecha_orden) DESC
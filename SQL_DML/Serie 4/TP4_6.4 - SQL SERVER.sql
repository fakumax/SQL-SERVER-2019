/*Serie 6 TP*/
--6. Funciones agregadas. 
--En todos los casos renombrar las columnas obtenidas por función agregada.

-- 6.4. Obtener el total de ventas realizadas a 30 días en el año 2014

USE editorial;

SELECT COUNT(forma_pago) AS 'Cantidad Ventas a 30 días'
FROM ventas
WHERE forma_pago='30 días' AND YEAR(fecha_orden)= 2014 

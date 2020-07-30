/*Serie 6 TP*/
--6. Funciones agregadas. 
--En todos los casos renombrar las columnas obtenidas por función agregada.

-- 6.1. Mostrar el promedio de venta anual de todos los títulos

USE editorial;

SELECT AVG(venta_anual ) AS 'Promedio'
FROM titulos
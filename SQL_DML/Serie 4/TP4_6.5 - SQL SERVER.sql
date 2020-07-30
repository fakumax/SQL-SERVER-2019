/*Serie 6 TP*/
--6. Funciones agregadas. 
--En todos los casos renombrar las columnas obtenidas por función agregada.

-- 6.5. Informar cuantas formas de pago existen

USE editorial;

SELECT COUNT(DISTINCT forma_pago) AS 'Cantidad Formas de Pago'
FROM ventas

 
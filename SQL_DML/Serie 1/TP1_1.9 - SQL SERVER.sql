--TP 1 - by fakumax

USE editorial
SELECT * FROM INFORMATION_SCHEMA.TABLES

--1.9. Listar las primeras 5 ventas.

SELECT * FROM ventas

SELECT TOP 5 * FROM ventas
ORDER BY fecha_orden ASC


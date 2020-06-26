--TP 1 - by fakumax

USE editorial
SELECT * FROM INFORMATION_SCHEMA.TABLES

--1.8. Listar los nombres de almac�n que hayan tenido ventas sin repetirlos.

SELECT DISTINCT  almacen_nombre
FROM almacenes, ventas
WHERE almacenes.almacen_id = ventas.almacen_id AND ventas.cantidad>1 


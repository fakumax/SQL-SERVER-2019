/*Serie 7 TP*/
--7. Funciones agregadas con agrupación. 
--Renombrar las columnas obtenidas por función agregada. 

-- 7.1. Informar cuantos títulos tiene cada autor. Mostrar código de autor y cantidad de libros.

USE editorial;

SELECT autor_id,COUNT(titulo_id) as 'Cantidad de libros'
FROM titulo_autor
GROUP BY autor_id
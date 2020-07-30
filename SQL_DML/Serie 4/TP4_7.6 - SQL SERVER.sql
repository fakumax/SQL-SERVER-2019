/*Serie 7 TP*/
--7. Funciones agregadas con agrupación. 
--Renombrar las columnas obtenidas por función agregada. 

-- 7.6. Informar aquellos títulos que tengan más de un autor. Mostrar código de título y cantidad de
-- autores.

USE editorial;
 
SELECT titulos.titulo_id, COUNT(autor_id) AS 'Cantidad de autores'
FROM titulos,titulo_autor 
WHERE titulos.titulo_id= titulo_autor.titulo_id
GROUP BY titulos.titulo_id
HAVING COUNT(autor_id)>1
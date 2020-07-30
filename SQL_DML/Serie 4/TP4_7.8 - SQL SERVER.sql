/*Serie 7 TP*/
--7. Funciones agregadas con agrupación. 
--Renombrar las columnas obtenidas por función agregada. 

-- 7.8. Informar los autores que hayan escrito varios géneros de títulos. Mostrar nombre y cantidad de
-- géneros ordenados por esta última columna empezando por el mayor.

USE editorial;

SELECT autores.autor_nombre, COUNT(DISTINCT titulos.genero) AS 'Cantidad de generos escritos'
FROM autores,titulos,titulo_autor
WHERE autores.autor_id = titulo_autor.autor_id
	  AND titulo_autor.titulo_id = titulos.titulo_id
GROUP BY autores.autor_id, autor_nombre
HAVING COUNT(DISTINCT genero)>1
 

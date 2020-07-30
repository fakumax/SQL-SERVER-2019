/*Serie 4 TP*/
--4. Manejo de valores nulos

-- 4.1. Mostrar todos los libros. Mostrar id de título, nombre y nombre del editor y el precio. Aquellos
-- que tienen el precio en nulo cambiarlo por 0.

USE editorial;

SELECT  titulos.titulo_id,
		titulos.titulo, 
		editoriales.editorial_nombre, 
		ISNULL(titulos.precio ,'0') AS precio
FROM titulos, editoriales
WHERE titulos.editorial_id= editoriales.editorial_id
		

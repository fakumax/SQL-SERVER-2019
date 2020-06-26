/*Serie 2 TP*/
--2. Consultas básicas con Where

--2.5. Mostrar aquellos libros que tienen el precio en nulo. Mostrar id de título, nombre y
--nombre del editor.

select titulo_id,titulos.titulo,editoriales.editorial_nombre
from titulos, editoriales
where titulos.precio IS NULL
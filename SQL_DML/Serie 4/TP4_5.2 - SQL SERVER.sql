/*Serie 5 TP*/
-- 5. Ordenación

-- 5.2. Listar los títulos pertenecientes al género “business”. Por cada fila, listar el id, el título y el
-- precio. Ordenar los datos por precio en forma descendente e id de artículo en forma
-- ascendente.

USE editorial;

SELECT titulos.titulo_id, titulos.titulo, titulos.precio
FROM titulos
WHERE genero= 'business'
ORDER BY precio DESC, titulo_id ASC
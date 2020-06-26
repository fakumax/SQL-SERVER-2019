/*Serie 3 TP*/
--3. Consultas básicas con cadenas en Where

-- 3.5. Informar las publicaciones del año 2011 exceptuando las de los géneros ‘business’, ‘psychology’
-- y ‘trad_cook’. Mostrar título y género. Ordenar por género y titulo.

use editorial

select titulos.titulo, titulos.genero, fecha_publicacion
from titulos
where YEAR(fecha_publicacion) = '2011'
	AND (titulos.genero <> 'business'
	AND titulos.genero <> 'psychology'
	AND titulos.genero <> 'trad_cook')
	ORDER by genero, titulo
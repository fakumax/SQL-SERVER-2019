/*Serie 2 TP*/
--2. Consultas básicas con Where

--2.1. Listar los títulos pertenecientes al editor 1389. Por cada fila, listar el título, el tipo y la
--fecha de publicación.

use editorial

select titulos.titulo,titulos.genero,titulos.fecha_publicacion 
from titulos
where titulos.editorial_id=1389
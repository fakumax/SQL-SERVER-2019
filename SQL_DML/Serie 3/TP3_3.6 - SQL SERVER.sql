/*Serie 3 TP*/
--3. Consultas básicas con cadenas en Where

--3.6. Mostrar los nombres de los autores que empiecen con “L”.

use editorial

select autores.autor_nombre
from autores
where autor_nombre LIKE 'L%'
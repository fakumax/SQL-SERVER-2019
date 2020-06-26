/*Serie 3 TP*/
--3. Consultas básicas con cadenas en Where

--3.7. Mostrar los nombres de los autores que tengan una “A” en su nombre.

use editorial

select autores.autor_nombre
from autores
where autor_nombre LIKE '%A%'
/*Serie 3 TP*/
--3. Consultas básicas con cadenas en Where

--3.9. Mostrar los nombres de los autores que empiecen con letras que van de la T a la Y.

use editorial

select autores.autor_nombre
from autores
where autor_nombre LIKE '[T-Y]%'
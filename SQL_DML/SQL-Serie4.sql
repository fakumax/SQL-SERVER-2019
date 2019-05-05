--4. Operaciones con cadenas
--4.1. Mostrar los nombres de los autores que empiecen con “L”.

use editorial

select autores.autor_nombre
from autores
where autores.autor_nombre LIKE 'L%'

--4.2. Mostrar los nombres de los autores que tengan una “A” en su nombre.

select autores.autor_nombre
from autores
where autores.autor_nombre LIKE '%A%'

--4.3. Mostrar los nombres de los autores que empiecen con letras que van de la T a la Y.

select autores.autor_nombre
from autores
where autores.autor_nombre LIKE '[T-Y]%'

--4.4. Mostrar los títulos que no tengan un “Computer” en su titulo.

select titulos.titulo 
from titulos
where titulos.titulo not like '%Computer%'
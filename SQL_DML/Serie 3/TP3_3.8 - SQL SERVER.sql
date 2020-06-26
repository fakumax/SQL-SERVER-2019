/*Serie 3 TP*/
--3. Consultas básicas con cadenas en Where

--3.8. Mostrar los títulos que no tengan un “Computer” en su título.

use editorial

select titulos.titulo
from titulos
where titulos.titulo NOT LIKE  '%Computer%'
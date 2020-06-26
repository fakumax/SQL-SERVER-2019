/*Serie 3 TP*/
--3. Consultas básicas con cadenas en Where

--3.11. Listar los títulos que tengan más regalías que cualquier otro título.

use editorial

select titulos.titulo, titulos.regalias
from titulos
ORDER by regalias DESC
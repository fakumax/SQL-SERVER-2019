/*Serie 3 TP*/
--3. Consultas básicas con cadenas en Where

-- 3.10. La columna autor id de autores esta formateada con una secuencia de 3 series de
-- caracteres numéricos separadas por guiones asi: ‘xxx-xx-xxxx’ por ejemplo ‘172-32-1176’.
-- Informar los autores que en el id tengan las siguientes condiciones (una consulta por cada
-- punto)
-- a) Primer serie empiece con 4 o 7
-- b) Segunda serie tenga solo 0, 5 y 8 en cualquier posición.
-- c) Segunda serie tenga solo 0, 5 u 8 en cualquier posición.
-- d) Primer serie empiece con 7 a 9.
-- e) Primer serie empiece con 7 a 9 y segunda serie no tenga 1 o 7

use editorial

select autores.autor_id
from autores
where autor_id LIKE '[4,7]%'

select autores.autor_id
from autores
where autor_id LIKE '____[0,5,8][0,5,8]_____'  OR autor_id LIKE '_____[0,5,8]_____'


select autores.autor_id
from autores
where autor_id LIKE '[7-9]%'

select autores.autor_id
from autores
where autor_id LIKE '[7-9]___[^1,7][^1,7]%'
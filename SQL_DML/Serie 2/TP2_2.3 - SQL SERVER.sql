/*Serie 2 TP*/
--2. Consultas básicas con Where

-- 2.3. Informar los empleados que tengan cargo id entre 10 y 13 excepto que su nivel de
-- cargo sea 100 o superior. Mostrar Nombre. Apellido y las columnas usadas en el
-- Where.

use editorial
select nombre,apellido,cargo_id,nivel_cargo from empleados
where (cargo_id BETWEEN 10 AND 13) AND nivel_cargo>=100 
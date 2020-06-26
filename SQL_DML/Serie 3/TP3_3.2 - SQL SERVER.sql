/*Serie 3 TP*/
--3. Consultas básicas con cadenas en Where

-- 3.2. Listar el nombre, la inicial del segundo nombre y el apellido de los empleados de las editoriales
-- “Lucerne Publishing” y “New Moon Books”

use editorial

select empleados.nombre, empleados.inicial_segundo_nombre, empleados.apellido
from empleados, editoriales
where empleados.editorial_id= editoriales.editorial_id
    AND (editorial_nombre = 'Lucerne Publishing' 
    OR editorial_nombre = 'New Moon Books')

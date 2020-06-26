/*Serie 3 TP*/
--3. Consultas básicas con cadenas en Where

-- 3.3. Mostrar los títulos que no sean de la editorial “Algodata Infosystems”. Informar título y
-- Editorial.

use editorial

select titulos.titulo, editoriales.editorial_nombre
from titulos, editoriales
where titulos.editorial_id= editoriales.editorial_id
    AND editorial_nombre <> 'Algodata Infosystems'

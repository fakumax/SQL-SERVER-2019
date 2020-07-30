/*Serie 4 TP*/
--4. Manejo de valores nulos

-- 4.2. Mostrar los títulos y el adelanto que le corresponde a cada uno, si este valor fuera nulo
-- informar le valor predeterminado de 1000 pesos.

USE editorial;

SELECT titulos.titulo, ISNULL(titulos.adelanto,'1000') AS 'Adelanto'
FROM titulos

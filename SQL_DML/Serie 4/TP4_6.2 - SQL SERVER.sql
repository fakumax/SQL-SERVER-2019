/*Serie 6 TP*/
--6. Funciones agregadas. 
--En todos los casos renombrar las columnas obtenidas por función agregada.

-- 6.2. Mostrar el máximo de adelanto de todos los títulos

USE editorial;

SELECT MAX(adelanto) AS 'Maximo'
FROM titulos


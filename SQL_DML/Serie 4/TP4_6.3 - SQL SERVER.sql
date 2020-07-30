/*Serie 6 TP*/
--6. Funciones agregadas. 
--En todos los casos renombrar las columnas obtenidas por función agregada.

-- 6.3. Informar cuantos planes de regalías tiene el título MC3021

USE editorial;

SELECT COUNT(*) AS 'Cantidad de Planes Regalía'
FROM  plan_regalias
WHERE  titulo_id='MC3021'

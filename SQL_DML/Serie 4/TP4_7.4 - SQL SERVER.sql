/*Serie 7 TP*/
--7. Funciones agregadas con agrupación. 
--Renombrar las columnas obtenidas por función agregada. 

-- 7.4. Informar el nivel de cargo más alto alcanzado por algún empleado de cada editorial. Mostrar
-- Nombre de la editorial y nivel de cargo. Ordenar por nivel de cargo máximo empezando por el
-- mayor

USE editorial;

SELECT editoriales.editorial_nombre,MAX(nivel_cargo) as 'Nivel Cargo'
FROM empleados,editoriales
WHERE editoriales.editorial_id=empleados.editorial_id
GROUP BY editoriales.editorial_nombre
ORDER BY MAX(nivel_cargo) DESC


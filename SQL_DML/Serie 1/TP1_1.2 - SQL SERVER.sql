--TP 1 - by fakumax

USE editorial
SELECT * FROM INFORMATION_SCHEMA.TABLES

--1.2. Listar todAS lAS columnAS de empleados y la descripci�n del cargo que tienen.
SELECT empleados.*,cargos.cargo_descripcion
FROM empleados,cargos
WHERE empleados.cargo_id= cargos.cargo_id


--TP 1 - by fakumax

USE editorial
SELECT * FROM INFORMATION_SCHEMA.TABLES

--1.6. Listar los nombres de autores sin repetirlos.

SELECT * FROM autores

SELECT DISTINCT autor_nombre,autor_apellido 
FROM autores


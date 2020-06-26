--TP 1 - by fakumax

USE editorial
SELECT * FROM INFORMATION_SCHEMA.TABLES

--1.7. Listar los pa�ses de las editoriales sin repetirlos.

SELECT * FROM editoriales

SELECT DISTINCT editoriales.pais
FROM editoriales



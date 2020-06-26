--TP 1 - by fakumax

USE editorial
SELECT * FROM INFORMATION_SCHEMA.TABLES

/*1.5. Mostrar por cada t�tulo su nombre y cuanto corresponde de regal�as por cada 1000
t�tulos vendidos. Esta columna se debe mostrar como �Regal�as x cada 1000
unidades�. Titulo.regal�as es un porcentaje.*/

SELECT * FROM titulos

SELECT titulos.titulo,titulos.precio, titulos.regalias, 'Regal�as x cada 1000 unidades' = (titulos.regalias*titulos.precio/100)*1000,
	   titulos.venta_anual 
FROM titulos


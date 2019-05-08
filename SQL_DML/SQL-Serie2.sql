/*Serie 2 TP*/
--2. Consultas básicas con Where

--2.1. Listar los títulos pertenecientes al editor 1389. Por cada fila, listar el título, el tipo y la
--fecha de publicación.

use editorial

select titulos.titulo,titulos.genero,titulos.fecha_publicacion 
from titulos
where titulos.editorial_id=1389

--2.2. Tomando las ventas mostrar el id de título, el título y el total de ventas que se obtiene
--de multiplicar la cantidad por precio. Renombrar a la columna calculada como “Total
--de venta”.

select titulos.titulo_id,titulos.titulo, 'Total de ventas'= titulos.precio*ventas.cantidad
from titulos,ventas
where ventas.titulo_id=titulos.titulo_id


--2.3. Listar los id de almacén, números de orden y la cantidad para las ventas que realizo el
--título “Prolonged Data Deprivation: Four Case Studies” el día 29 de mayo de 2013.

select ventas.almacen_id, ventas.numero_orden, ventas.cantidad, ventas.fecha_orden
from ventas,titulos
where titulos.titulo='Prolonged Data Deprivation: Four Case Studies' AND
ventas.fecha_orden= '20130529'

--2.4. Listar el nombre, la inicial del segundo nombre y el apellido de los empleados de las
--editoriales “Lucerne Publishing” y “New Moon Books”

select empleados.nombre, empleados.inicial_segundo_nombre, empleados.apellido
from empleados,editoriales
where empleados.editorial_id= editoriales.editorial_id and
(editorial_nombre = 'Lucerne Publishing' or editoriales.editorial_nombre = 'New Moon Books')

--2.5. Mostrar los títulos que no sean de la editorial “Algodata Infosystems”. Informar titulo
--y Editorial.

select titulos.titulo
from titulos,editoriales
where titulos.editorial_id=editoriales.editorial_id and
editoriales.editorial_nombre<>'Algodata Infosystems'

--2.6. Listar los títulos que tengan más regalías que cualquier otro título.

SELECT distinct titu1.titulo
FROM    titulos as titu1, titulos as titu2
where titu1.regalias>titu2.regalias


--2.7. Informar los empleados contratados en febrero, junio y agosto de cualquier año.
--Mostrar apellido, nombre y fecha de contratación y ordenar por mes empezando por
--los de febrero.

select empleados.apellido, empleados.nombre, empleados.fecha_contratacion
from empleados
where month(empleados.fecha_contratacion)=2 or month(empleados.fecha_contratacion)=6 or
month(empleados.fecha_contratacion)=8
order by month(empleados.fecha_contratacion)

--2.8. Informar las ventas de los siguientes títulos: 'Cooking with Computers: Surreptitious
--Balance Sheets', 'The Psychology of Computer Cooking', 'Emotional Security: A New
--Algorithm'. Mostrar titulo, nombre de almacén, fecha de orden, número de orden y
--cantidad. Ordenar por títulos.

select titulos.titulo,almacenes.almacen_nombre, ventas.fecha_orden,ventas.numero_orden,ventas.cantidad
from ventas,titulos,almacenes
where (ventas.titulo_id = titulos.titulo_id and almacenes.almacen_id=ventas.almacen_id ) and
(titulos.titulo='Cooking with Computers: Surreptitious Balance Sheets' or
titulos.titulo='The Psychology of Computer Cooking' or
titulos.titulo='Emotional Security: A New Algorithm')
order by titulos.titulo

--2.9. Informar las publicaciones del año 2011 exceptuando las de los géneros business,
--psychology y trad_cook. Mostrar titulo y género. Ordenar por género y titulo.

select titulos.titulo, titulos.genero
from titulos
where year(titulos.fecha_publicacion) = 2011 and
(titulos.genero <> 'business' and titulos.genero <> 'psychology' and titulos.genero <> 'trad_cook') 
order by titulos.genero,titulos.titulo

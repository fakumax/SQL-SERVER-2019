/*Serie 3 TP*/
--3. Consultas básicas con cadenas en Where

--3.1. Listar las ventas que realizo el título “Prolonged Data Deprivation: Four Case Studies” el día 29
--de mayo de 2013. Mostrar nombre de almacenes, números de orden y la cantidad de cada
--venta.

use editorial

select almacenes.almacen_nombre, ventas.numero_orden, ventas.cantidad
from almacenes, ventas, titulos
where almacenes.almacen_id = ventas.almacen_id AND titulos.titulo = 'Prolonged Data Deprivation: Four Case Studies'
AND fecha_orden='2013-05-29'
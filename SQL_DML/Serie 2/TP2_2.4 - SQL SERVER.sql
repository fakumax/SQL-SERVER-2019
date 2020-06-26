/*Serie 2 TP*/
--2. Consultas básicas con Where

-- 2.4. Informar la venta de los almacenes de id 7xxx. Mostrar el almacén id, el número de
-- orden, la fecha de la factura y el título nombre.

select ventas.almacen_id, numero_orden,fecha_orden,titulo
from ventas,titulos
where (ventas.titulo_id = titulos.titulo_id) AND almacen_id>=7000
/*Serie 5 TP*/
-- 5. Ordenación

-- 5.3. Informar la venta más importante con forma de pago a 60 días. Mostrar el almacén, el número
-- de orden, la fecha de la factura y el título.

USE editorial;

SELECT TOP 1 almacenes.almacen_nombre,ventas.numero_orden, ventas.fecha_orden,titulos.titulo, MAX(ventas.cantidad*titulos.precio) as 'Venta más importante'
FROM ventas,titulos,almacenes
WHERE ventas.titulo_id= titulos.titulo_id 
	  AND almacenes.almacen_id= ventas.almacen_id
	  AND forma_pago='60 días'
GROUP BY  almacenes.almacen_nombre, ventas.numero_orden, ventas.fecha_orden, titulos.titulo
ORDER BY [Venta más importante] desc
		
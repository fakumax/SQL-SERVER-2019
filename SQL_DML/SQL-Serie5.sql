/*5. Ordenaci�n

5.1. Listar los empleados ordenados por apellido, por nombre y por inicial del segundo
nombre. */

use editorial

select empleados.apellido, empleados.nombre, empleados.inicial_segundo_nombre
from empleados
order by empleados.apellido, empleados.nombre, empleados.inicial_segundo_nombre

--5.2. Listar los t�tulos pertenecientes al g�nero �business�. Por cada fila, listar el id, el t�tulo
--y el precio. Ordenar los datos por precio en forma descendente e id de art�culo en
--forma ascendente.

select titulos.titulo_id,titulos.titulo,titulos.precio
from titulos
where titulos.genero='business'
order by titulos.precio desc, titulos.titulo_id asc

--5.3. Informar la venta m�s importante con forma de pago a 60 d�as. Mostrar el almac�n, el
--n�mero de orden, la fecha de la factura y el t�tulo.

select almacenes.almacen_nombre,ventas.numero_orden,ventas.fecha_orden,titulos.titulo,ventas.forma_pago, '+ Importante'=titulos.precio*ventas.cantidad
from ventas, almacenes,titulos
where almacenes.almacen_id = ventas.almacen_id  and titulos.titulo_id= ventas.titulo_id and 
ventas.forma_pago='60 d�as' 

/*Serie 3 TP*/
--3. Consultas básicas con cadenas en Where

-- 3.4. Informar las ventas de los siguientes títulos: 'Cooking with Computers: Surreptitious Balance
-- Sheets', 'The Psychology of Computer Cooking', 'Emotional Security: A New Algorithm'. Mostrar
-- titulo, nombre de almacén, fecha de orden, número de orden y cantidad. Ordenar por títulos.

use editorial

select titulos.titulo, almacenes.almacen_nombre , ventas.fecha_orden, ventas.numero_orden, ventas.cantidad
from titulos, ventas, almacenes
where ventas.titulo_id= titulos.titulo_id
	AND almacenes.almacen_id=ventas.almacen_id
	AND (titulos.titulo='Cooking with Computers: Surreptitious Balance Sheets'
	OR titulos.titulo='The Psychology of Computer Cooking'
	OR titulos.titulo='Emotional Security: A New Algorithm')
	ORDER by titulo
 

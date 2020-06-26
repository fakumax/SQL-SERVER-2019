/*Serie 2 TP*/
--2. Consultas básicas con Where

--2.2. Informar los empleados contratados en febrero, junio y agosto de cualquier año.
--Mostrar apellido, nombre y fecha de contratación y ordenar por mes empezando por
--los de febrero.

select empleados.apellido, empleados.nombre, empleados.fecha_contratacion
from empleados
where month(empleados.fecha_contratacion)=2 or month(empleados.fecha_contratacion)=6 or
month(empleados.fecha_contratacion)=8
order by month(empleados.fecha_contratacion)
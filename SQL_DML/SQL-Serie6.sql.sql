/*6. Funciones agregadas. No olvidar renombrar las columnas obtenidas por funci�n agregada.

6.1. Mostrar el promedio de venta anual de todos los t�tulos
*/

use editorial

select 'Promedio Venta Anual' =AVG(titulos.venta_anual) 
from titulos

--6.2. Mostrar el m�ximo de adelanto de todos los t�tulos

select 'M�ximo Adelanto'=max(titulos.adelanto) 
from titulos

--6.3. Informar cuantos planes de regal�as tiene el t�tulo MC3021

select 'Cantidad planes regalias'= count(plan_regalias.regalias)
from titulos,plan_regalias
where titulos.titulo_id = plan_regalias.titulo_id  and titulos.titulo_id='MC3021'  

--6.4. Obtener el total de ventas realizadas a 30 d�as en el a�o 2014

select sum(cantidad*precio) as total
from ventas as v, titulos as t
where v.titulo_id=t.titulo_id
and forma_pago='30 d�as' and 
year(fecha_orden)=2014

--6.5. Informar cuantas formas de pago existen

select 'Cantidad formas de pago'=count(distinct ventas.forma_pago)
from ventas
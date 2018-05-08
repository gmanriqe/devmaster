-- REPORTE POR CODIGO ENCUESTADOR, MANZANA, CONTANDO FICHA POR MANZANA

select codencuestador, manzana, count(1)
from nasca.ficha
where fectrabajada AT TIME ZONE 'america/lima'>'2018-04-04' and fectrabajada AT TIME ZONE 'america/lima'<'2018-04-05'
group by codencuestador, manzana
-- Georg Richard Wittig Parraguez / DUAOTEC SpA: historial de órdenes por RUT societario.
-- Corte gold: 2026-10-02T15:43:07Z. Ejecutar con ec-gold-sql.
select order_code,
       sent_date,
       status,
       route,
       is_direct_award,
       is_agile,
       tender_code,
       buyer_name,
       sector,
       region,
       amount_clp,
       url
from purchase_order
where supplier_rut = '76624276'
order by sent_date, order_code;
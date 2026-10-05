-- Exact company match from declaration; deduplicate person-window rows by canonical order.
-- Artifact cutoff: 2026-10-02T15:43:07Z. Execute with ec-gold-sql.
select order_code, sent_date, buyer_name, amount_clp, route, is_direct_award,
       main_rubro, url
from purchase_order
where supplier_rut = '76641910'
  and sent_date >= date '2026-03-30'
  and sent_date <= date '2026-10-02'
order by sent_date, order_code;

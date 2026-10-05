-- Independent canonical count, total and route check; one row per unique purchase order.
-- Artifact cutoff: 2026-10-02T15:43:07Z. Execute with ec-gold-sql.
select count(*) as n_unique_orders,
       sum(amount_clp) as amount_clp,
       sum(case when is_direct_award then 1 else 0 end) as n_direct_award,
       min(sent_date) as first_order_date,
       max(sent_date) as last_order_date
from (
  select order_code, max(amount_clp) as amount_clp,
         bool_or(is_direct_award) as is_direct_award,
         min(sent_date) as sent_date
  from purchase_order
  where supplier_rut = '76641910'
    and sent_date >= date '2026-03-30'
    and sent_date <= date '2026-10-02'
  group by order_code
) orders;

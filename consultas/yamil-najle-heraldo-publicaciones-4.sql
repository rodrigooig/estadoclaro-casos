-- Person/declaration-side rows: filter the primary person match to prevent overlap from
-- timing labels (the same order can appear as both during and after_1y).
-- Artifact cutoff: 2026-10-02T15:43:07Z. Execute with ec-gold-sql.
select order_code, sent_date, buyer_name, amount_clp, route,
       is_direct_award, timing, same_institution, is_primary_for_person
from declared_supply_order
where supplier_rut = '76641910'
  and sent_date >= date '2026-03-30'
  and sent_date <= date '2026-10-02'
  and is_primary_for_person
order by sent_date, order_code;

-- Exact company identifier check against canonical procurement orders.
-- Artifact cutoff: 2026-10-02T15:43:07Z.
select order_code, sent_date, status, route, is_direct_award, is_agile,
       tender_code, buyer_name, amount_clp, timing, same_institution,
       is_primary_for_person
from declared_supply_order
where supplier_rut = '96505020'
order by sent_date, order_code;
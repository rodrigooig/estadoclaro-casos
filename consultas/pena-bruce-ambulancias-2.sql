-- Canonical purchase-order rows for the exact corporate RUT in the declaration.
-- Artifact cutoff: 2026-10-02T15:43:07Z; run 2026-10-05.
select order_code, sent_date, status, route, is_direct_award, tender_code,
       supplier_name, supplier_rut, buyer_code, buyer_name,
       round(amount_clp) as amount_clp, currency, declared_amount,
       main_rubro, url
from purchase_order
where supplier_rut = '76234742'
order by sent_date, order_code;
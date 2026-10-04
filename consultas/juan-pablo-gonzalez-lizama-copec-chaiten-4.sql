-- Test whether the supplier's buyer-name field explicitly names Chaitén health units
-- during the declared role period. A zero result does not exclude municipal buyer rows
-- whose unit is only identified in the primary order detail.
-- Artifact cutoff: 2026-10-02T15:43:07Z. Read-only via ec-gold-sql.
select distinct po.order_code, po.sent_date, po.buyer_name, po.status,
       po.amount_clp, po.route, po.tender_code
from purchase_order po
where po.supplier_rut = '99520000'
  and po.sent_date between date '2025-07-21' and date '2026-10-01'
  and po.buyer_name ilike '%CHAITEN%'
  and po.buyer_name ilike '%SALUD%'
order by po.sent_date;
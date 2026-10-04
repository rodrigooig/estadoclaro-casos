-- Distinct Chaitén buyer orders by Copec within this person's declaration windows.
-- Deduplicate by order_code across repeated declaration snapshots.
-- Artifact cutoff: 2026-10-02T15:43:07Z. Read-only via ec-gold-sql.
with windows as (
  select distinct person_id, supplier_rut, window_start, window_end
  from company_supply
  where person_id = (
    select person_id from declarant
    where full_name = 'JUAN PABLO GONZALEZ LIZAMA'
  )
    and supplier_rut = '99520000'
)
select distinct po.order_code, po.sent_date, po.buyer_name, po.amount_clp,
       po.status, po.route, po.tender_code, po.main_rubro, po.url
from windows w
join purchase_order po
  on po.supplier_rut = w.supplier_rut
 and po.sent_date >= w.window_start
 and po.sent_date < w.window_end
where po.buyer_name ilike '%CHAITEN%'
order by po.sent_date;
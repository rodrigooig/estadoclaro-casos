-- Independent deduplicated check by order code; timing can repeat a single OC.
-- Gold cutoff 2026-10-02T15:43:07Z.
select order_code, max(sent_date) as sent_date, max(buyer_name) as buyer_name,
       max(status) as status, max(route) as route, max(tender_code) as tender_code,
       max(amount_clp) as amount_clp, max(amount_uf) as amount_uf,
       max(same_institution::int)::boolean as same_institution
from declared_supply_order
where supplier_rut = '76956233' and timing = 'during'
group by order_code
order by sent_date;
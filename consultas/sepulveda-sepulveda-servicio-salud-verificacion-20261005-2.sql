-- Verify the primary Mercado Público order and count it once by order_code.
-- Artifact cutoff: 2026-10-02T15:43:07Z. Execute with ec-gold-sql.
select order_code, url, sent_date, created_date, status, route, contract_type,
       is_direct_award, tender_code, supplier_rut, supplier_name, buyer_code,
       buyer_name, round(amount_clp) as amount_clp, currency, declared_amount,
       main_rubro, n_items
from purchase_order
where order_code = '1627-16-SE20';

select order_code, count(*) as n_rows,
       count(distinct supplier_rut) as supplier_ids,
       sum(amount_clp) as total_clp
from purchase_order
where order_code = '1627-16-SE20'
group by order_code;
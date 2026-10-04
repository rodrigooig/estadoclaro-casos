-- Purchase orders for company RUT body 76031052, one row per canonical order.
-- Gold cutoff: 2026-10-02T15:43:07Z. Run with ec-gold-sql.
select order_code, sent_date, status, route, contract_type, is_direct_award,
       is_agile, tender_code, supplier_rut, supplier_name, buyer_name, buyer_key,
       amount_clp, currency, declared_amount, main_rubro
from purchase_order
where regexp_replace(supplier_rut, '[^0-9]', '', 'g') = '76031052'
order by sent_date, order_code;

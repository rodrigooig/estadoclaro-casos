-- Exact supplier and tender IDs, one row per stored order code.
-- Artifact cutoff: 2026-10-02T15:43:07Z. Cancelled and replacement codes are both shown;
-- do not sum them as independent completed contracts. Run only with ec-gold-sql.
select distinct
    o.order_code,
    o.sent_date,
    o.status,
    o.route,
    o.tender_code,
    o.buyer_name,
    o.supplier_name,
    o.supplier_rut,
    o.amount_clp,
    o.url
from purchase_order o
where regexp_replace(o.supplier_rut, '[^0-9]', '') = '77046310'
  and o.tender_code = '4127-25-LE19'
order by o.sent_date, o.order_code;

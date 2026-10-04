-- Check whether the exact company name appears in the gold public-order records.
-- Artifact cutoff 2026-10-02T15:43:07Z; zero rows means no exact-name match in this artifact/query.
select supplier_rut, supplier_name, count(*) as unique_order_rows,
       min(sent_date) as first_order, max(sent_date) as last_order,
       round(sum(amount_clp)) as amount_clp
from purchase_order
where lower(coalesce(supplier_name, '')) = 'centro de salud vitaser limitada'
group by supplier_rut, supplier_name
order by unique_order_rows desc;

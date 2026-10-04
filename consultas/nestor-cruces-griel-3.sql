-- Independent exact-RUT aggregate: count unique OC codes, not line items or snapshots.
-- Gold cutoff: 2026-10-02T15:43:07Z. Run with ec-gold-sql.
select count(distinct order_code) as unique_orders,
       count(distinct buyer_key) as distinct_buyers,
       min(sent_date) as first_sent,
       max(sent_date) as last_sent,
       sum(amount_clp) as total_amount_clp,
       count(*) filter (where is_direct_award) as direct_award_orders,
       count(*) filter (where is_agile) as agile_orders
from purchase_order
where regexp_replace(supplier_rut, '[^0-9]', '', 'g') = '76031052';

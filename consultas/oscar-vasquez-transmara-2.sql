-- Canonical public orders by exact supplier RUT (DV kept in source pages).
-- Count distinct purchase-order codes; artifact cutoff: 2026-10-02T15:43:07Z.
select count(*) as row_count,
       count(distinct order_code) as unique_orders,
       count(distinct case when is_direct_award then order_code end) as direct_orders,
       sum(amount_clp) as sum_clp,
       min(sent_date) as first_date,
       max(sent_date) as last_date,
       count(distinct buyer_code) as buyers
from purchase_order
where supplier_rut = '78654420';

select buyer_code, buyer_name, count(distinct order_code) unique_orders,
       sum(amount_clp) sum_clp,
       count(distinct case when is_direct_award then order_code end) direct_orders,
       min(sent_date) first_date, max(sent_date) last_date
from purchase_order
where supplier_rut = '78654420'
group by buyer_code, buyer_name
order by sum_clp desc;

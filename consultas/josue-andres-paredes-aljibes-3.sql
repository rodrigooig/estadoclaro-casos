-- Independent canonical-order cross-check against purchase_order.
-- Cutoff: gold meta.build_date 2026-10-02T15:43:07+00:00
-- Run date: 2026-10-04 UTC. Codes come from query 2; supplier matched by full legal name.
select
    buyer_name,
    count(distinct order_code) as distinct_orders,
    min(sent_date) as first_sent,
    max(sent_date) as last_sent,
    sum(amount_clp) as sum_clp
from purchase_order
where order_code in (
    '1202511-1830-SE25', '4179-1251-SE25', '1202511-1896-SE25',
    '1202511-2048-SE25', '1202511-2217-SE25', '1202511-2335-SE25',
    '1202511-84-SE26', '1202511-279-SE26', '1202511-408-SE26',
    '1202511-541-SE26', '1202511-625-SE26'
)
and supplier_name = 'JB'
group by buyer_name
order by buyer_name;

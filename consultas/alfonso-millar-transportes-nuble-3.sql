-- Group deduplicated OCs by procurement route; excludes rows beyond one per order.
-- Gold cutoff 2026-10-02T15:43:07Z.
select route, is_direct_award, is_agile,
       count(distinct order_code) as orders, sum(amount_clp) as sum_clp
from (
    select order_code, max(route) as route,
           max(is_direct_award::int)::boolean as is_direct_award,
           max(is_agile::int)::boolean as is_agile,
           max(amount_clp) as amount_clp
    from declared_supply_order
    where supplier_rut = '76956233' and timing = 'during'
    group by order_code
)
group by route, is_direct_award, is_agile
order by orders desc;
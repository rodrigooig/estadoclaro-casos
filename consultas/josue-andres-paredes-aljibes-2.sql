-- Cutoff: gold meta.build_date 2026-10-02T15:43:07+00:00
-- Run date: 2026-10-04 UTC. One canonical company/order row per person.
-- This result is measured against the immutable local gold via ec-gold-sql.
select
    sent_date,
    order_code,
    tender_code,
    buyer_name,
    amount_clp,
    status,
    route,
    timing,
    same_institution,
    is_primary_for_person
from declared_supply_order
where person_id = (
    select person_id from person
    where upper(full_name) = 'JOSUE ANDRES PAREDES MADARIAGA'
)
and is_primary_for_person = true
order by sent_date, order_code;

-- Cutoff: gold meta.build_date 2026-10-02T15:43:07+00:00
-- Run date: 2026-10-04 UTC. Person identity matched by full name.
-- Declaration snapshots and declared participation; do not publish personal RUT fields.
select
    d.declaration_date,
    d.institution,
    d.position,
    d.declaration_type,
    d.is_current,
    c.legal_name,
    c.type as participation_type,
    c.quantity,
    c.is_controlling,
    c.value_clp,
    c.currency,
    c.acquisition_date
from declaration d
join person p on p.person_id = d.person_id
left join company c on c.declaration_id = d.declaration_id
where upper(p.full_name) = 'JOSUE ANDRES PAREDES MADARIAGA'
order by d.declaration_date, c.legal_name;

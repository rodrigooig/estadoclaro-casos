-- Longitudinal declaration and liability detail for Sergio Raul Vial Lopez.
-- Artifact cutoff: 2026-10-02T15:43:07Z. Run with ec-gold-sql.
select
    de.declaration_date,
    de.declaration_id,
    de.declaration_type,
    de.global_liability_amount_clp,
    l.type as liability_type,
    l.value_clp as liability_value_clp,
    l.creditor,
    re.comuna,
    re.registration_year,
    re.conservador,
    re.value_clp as property_value_clp
from declaration de
join declarant d using (person_id)
left join liability l on de.declaration_id = l.declaration_id
left join real_estate re on de.declaration_id = re.declaration_id
where d.full_name = 'SERGIO RAUL VIAL LOPEZ'
  and de.declaration_date >= date '2024-01-01'
order by de.declaration_date, l.value_clp desc, re.value_clp desc;

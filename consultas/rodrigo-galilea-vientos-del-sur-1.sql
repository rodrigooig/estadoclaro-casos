-- Rodrigo Galilea Vial: declared Vientos del Sur series by declaration snapshot.
-- Artifact cutoff: 2026-10-02T15:43:07Z. Run only with ec-gold-sql.
select d.declaration_date,
       d.declaration_id,
       d.institution,
       d.position,
       d.declaration_type,
       c.legal_name,
       c.company_rut,
       c.quantity,
       c.value_clp,
       c.currency,
       c.is_controlling,
       a.implausible,
       a.currency_reading,
       a.value_clp_alternative,
       a.match_quality,
       d.source_id
from declarant p
join declaration d using (person_id)
join company c using (declaration_id)
join asset a using (declaration_id, asset_id)
where p.full_name = 'RODRIGO GALILEA VIAL'
  and c.company_rut = '96832090'
order by d.declaration_date desc, d.declaration_id;

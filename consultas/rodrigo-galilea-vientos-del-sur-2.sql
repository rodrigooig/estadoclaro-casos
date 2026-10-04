-- Rodrigo Galilea Vial: reproduce the selected Senate declaration's panel and company outlier.
-- Artifact cutoff: 2026-10-02T15:43:07Z. Run only with ec-gold-sql.
select d.declaration_date,
       d.declaration_id,
       d.institution,
       d.position,
       d.declaration_type,
       p.assets_clp,
       p.assets_adjusted_clp,
       p.n_companies,
       p.has_outlier,
       p.confidence,
       a.asset_type,
       count(*) as asset_rows,
       round(sum(a.value_clp)) as sum_asset_clp,
       sum(case when a.implausible then 1 else 0 end) as implausible_rows,
       p.source_uri
from declarant x
join declaration d using (person_id)
join panel p using (declaration_id)
join asset a using (declaration_id)
where x.full_name = 'RODRIGO GALILEA VIAL'
  and d.declaration_id = 'declaracion_8dc13b746801a98c6545416e415df892'
group by all
order by a.asset_type;

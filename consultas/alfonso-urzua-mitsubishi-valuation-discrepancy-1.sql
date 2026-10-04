-- Alfonso Iván Urzúa Gavilán: serie del Mitsubishi Outlander 2017.
-- Corte del oro: meta.build_date=2026-10-02T15:43:07+00:00.
-- Ejecutada con ec-gold-sql el 2026-10-04; no sumar snapshots.
select p.full_name,
       d.declaration_date,
       d.n_declaration,
       d.is_current,
       d.source_id,
       a.asset_id,
       a.asset_key,
       a.value_clp,
       a.declared_value,
       a.currency,
       a.implausible,
       a.no_amount,
       a.value_uf
from asset a
join declaration d on d.declaration_id = a.declaration_id
join person p on p.person_id = d.person_id
where p.full_name = 'ALFONSO IVÁN URZÚA GAVILÁN'
  and a.asset_type = 'movable'
  and a.asset_key like 'attr|MITSUBISHI|OUTLANDER|2017'
order by d.declaration_date, d.n_declaration;

-- Candidate mining: controlled companies in current declarations with >=5 linked public orders.
-- Artifact cutoff: 2026-10-02T15:43:07Z. Execute with ec-gold-sql.
select d.full_name, p.institution, p.position, p.declaration_date, p.source_uri,
       cs.legal_name, cs.supplier_rut, cs.is_controlling,
       css.n_orders, round(css.amount_clp) as amount_clp, css.last_order_date
from panel p
join declarant d using (person_id)
join company_supply cs
  on cs.person_id = p.person_id and cs.declaration_id = p.declaration_id
join company_supply_summary css
  on css.declaration_id = cs.declaration_id and css.asset_id = cs.asset_id
where p.is_current and cs.is_controlling and css.n_orders >= 5
order by css.amount_clp desc;

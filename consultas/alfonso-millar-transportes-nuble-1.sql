-- Exploratory screen from the synced gold artifact; cutoff 2026-10-02T15:43:07Z.
-- Exact person name, all declaration snapshots and declared supplier rows.
select d.full_name, p.institution, p.position, p.declaration_date,
       p.declaration_id, p.source_uri, p.n_supply_orders,
       p.supply_amount_clp, p.n_supply_same_institution,
       s.supplier_rut, s.legal_name, s.is_controlling, s.participation_type,
       s.article_4_stake, s.n_orders_during, s.n_buyers,
       s.n_same_institution, s.n_direct_award, s.n_agile,
       s.first_order_date, s.last_order_date, s.amount_clp_during,
       s.amount_uf_during, s.supplier_name, s.supplier_activity
from panel p
join declarant d using (person_id)
join declared_supply s using (person_id)
where d.full_name = 'ALFONSO SEBASTIAN MILLAR QUEZADA'
order by p.declaration_date, s.supplier_rut;
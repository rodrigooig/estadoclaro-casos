-- Reproduce the relationship, declaration window, supplier identifier and purchase timeline.
-- Artifact cutoff: 2026-10-02T15:43:07Z. Execute with ec-gold-sql.
select d.full_name, p.position, p.institution, p.declaration_id,
       p.declaration_date, p.source_uri, s.supplier_name, s.supplier_rut,
       s.supplier_dv, s.legal_name, s.participation_type, s.is_controlling,
       s.n_declarants, s.article_4_stake, s.n_orders_during,
       s.n_same_institution, round(s.amount_clp_during) as amount_clp_during,
       s.first_order_date, s.last_order_date
from panel p join declarant d using(person_id)
join declared_supply s using(person_id)
where d.full_name = 'JUAN CARLOS SEPÚLVEDA SEPÚLVEDA'
order by p.declaration_date desc, s.amount_clp_during desc;
-- Discovery and identity cross-check for the Transportes Maquinarias y Aridos lead.
-- Artifact cutoff: 2026-10-02T15:43:07Z. Run with ec-gold-sql.
select d.full_name, p.institution, p.position, p.declaration_date, p.source_uri,
       s.legal_name, s.supplier_rut, s.is_controlling, s.n_declarants,
       s.n_orders_during, s.n_buyers, s.n_same_institution,
       round(s.amount_clp_during) amount_clp, s.n_direct_award,
       s.first_order_date, s.last_order_date
from panel p join declarant d using(person_id)
join declared_supply s using(person_id)
where p.is_current
  and d.full_name ilike '%OSCAR%VASQUEZ%MARIN%';

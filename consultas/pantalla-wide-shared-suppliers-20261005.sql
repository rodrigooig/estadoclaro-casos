-- Wide screen: declared companies with multiple declarants and repeated procurement.
-- Artifact cutoff: 2026-10-02T15:43:07Z. Execute with ec-gold-sql.
select d.full_name, p.institution, p.position, s.legal_name, s.supplier_rut,
       s.n_declarants, s.is_controlling, s.article_4_stake,
       s.n_orders_during, s.n_buyers, s.n_same_institution,
       round(s.amount_clp_during) as amount_clp, s.n_direct_award,
       s.first_order_date, s.last_order_date
from panel p join declarant d using(person_id)
join declared_supply s using(person_id)
where p.is_current and s.n_declarants >= 2 and s.n_orders_during >= 3
order by s.amount_clp_during desc;
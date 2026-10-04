-- Georg Richard Wittig Parraguez / DUAOTEC SpA: resumen del cruce temporal.
-- Corte gold: 2026-10-02T15:43:07Z. Ejecutar con ec-gold-sql.
select d.full_name,
       p.institution,
       p.position,
       p.is_current,
       s.supplier_name,
       s.supplier_rut,
       s.participation_type,
       s.is_controlling,
       s.article_4_stake,
       s.name_similarity,
       s.n_orders_during,
       s.n_orders_after,
       s.n_orders_excluded,
       s.n_buyers,
       s.n_same_institution,
       s.n_direct_award,
       s.n_agile,
       s.first_order_date,
       s.last_order_date,
       s.amount_clp_during,
       s.amount_uf_during,
       s.company_first_order,
       s.company_last_order
from declared_supply s
join panel p using (person_id)
join declarant d using (person_id)
where d.full_name = 'GEORG RICHARD WITTIG PARRAGUEZ'
  and s.supplier_rut = '76624276';
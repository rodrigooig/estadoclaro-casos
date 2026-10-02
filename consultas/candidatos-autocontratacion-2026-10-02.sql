SELECT p.full_name, d.institution, d.position, d.declaration_date,
       s.supplier_name, s.legal_name, s.supplier_rut, s.n_declarants,
       s.participation_type, s.is_controlling, s.article_4_stake,
       s.n_orders_during, s.n_same_institution, s.n_direct_award, s.n_agile,
       s.amount_clp_during, s.first_order_date, s.last_order_date
FROM declared_supply s
JOIN person p USING (person_id)
JOIN declaration d ON d.person_id = s.person_id AND d.is_current
WHERE s.n_same_institution > 0
  AND s.article_4_stake
  AND NOT coalesce(s.is_natural_person, false)
ORDER BY s.amount_clp_during DESC NULLS LAST
LIMIT 50;

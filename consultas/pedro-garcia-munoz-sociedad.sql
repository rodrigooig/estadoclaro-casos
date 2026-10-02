SELECT p.full_name, s.supplier_rut, s.supplier_dv, s.legal_name, s.supplier_name,
       s.n_declarants, s.participation_type, s.is_controlling, s.article_4_stake,
       s.n_orders_during, s.amount_clp_during, s.amount_uf_during,
       s.n_same_institution, s.n_direct_award, s.n_agile,
       s.first_order_date, s.last_order_date, s.name_similarity
FROM declared_supply s
JOIN person p USING (person_id)
WHERE p.full_name = 'PEDRO ENRIQUE GARCIA MUÑOZ'
  AND s.supplier_rut = '76078271';

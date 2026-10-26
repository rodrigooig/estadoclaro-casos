-- Declaraciones de la sociedad proveedora y cruce agregado de compras.
SELECT p.full_name, d.declaration_date, d.source_id, d.institution, d.position,
       c.legal_name, c.company_rut, c.type, c.quantity, c.value_clp,
       c.is_controlling, ds.participation_type, ds.article_4_stake,
       ds.name_similarity, ds.n_orders_during, ds.n_same_institution,
       ds.n_direct_award, ds.n_agile, ds.amount_clp_during,
       ds.amount_uf_during, ds.first_order_date, ds.last_order_date
FROM declared_supply ds
JOIN person p USING (person_id)
JOIN declaration d ON d.person_id = ds.person_id
JOIN company c ON c.declaration_id = d.declaration_id
                 AND c.company_rut = ds.supplier_rut
WHERE p.full_name = 'ESTEBAN GREGORIO MARTÍNEZ RUBIO'
  AND ds.supplier_rut = '76176473'
ORDER BY d.declaration_date;

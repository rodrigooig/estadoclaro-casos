-- Participación declarada y agregados del cruce por persona/proveedor.
SELECT p.full_name, d.supplier_rut, d.legal_name, d.participation_type,
       d.is_controlling, d.article_4_stake, d.n_declarants, d.is_widely_held,
       d.name_similarity, d.n_orders_during, d.n_same_institution,
       d.amount_clp_during, d.amount_uf_during, d.first_order_date,
       d.last_order_date, d.supplier_name, d.supplier_dv
FROM declared_supply d
JOIN person p USING (person_id)
WHERE p.full_name = 'JORGE RODRIGO PIZARRO GARAY'
  AND d.supplier_rut = '96928510';
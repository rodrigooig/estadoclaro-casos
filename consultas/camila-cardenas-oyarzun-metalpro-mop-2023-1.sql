-- Consulta semilla: puente de declaración, proveedor y resumen de órdenes
-- para Camila Cárdenas; proveedor por RUT exacto, sin decidir identidad por nombre.
SELECT
  p.full_name, d.source_id, d.declaration_date, d.position, d.institution,
  d.start_date, c.company_rut, c.legal_name, c.type, c.quantity,
  c.value_clp, c.is_controlling, c.acquisition_date,
  ds.n_orders_during, ds.amount_clp_during, ds.amount_uf_during,
  ds.n_buyers, ds.n_same_institution, ds.n_direct_award, ds.n_agile,
  ds.first_order_date, ds.last_order_date, ds.name_similarity,
  ds.supplier_dv, ds.supplier_name, ds.supplier_activity
FROM person p
JOIN declaration d USING (person_id)
JOIN company c USING (declaration_id)
JOIN declared_supply ds
  ON ds.person_id = d.person_id AND ds.supplier_rut = c.company_rut
WHERE p.full_name = 'CAMILA DEL CARMEN CÁRDENAS OYARZÚN'
  AND d.source_id = '5078480'
  AND c.company_rut = '76223043';

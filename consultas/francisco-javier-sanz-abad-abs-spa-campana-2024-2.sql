-- Revisa si el oro registra ventas al Estado durante la ventana declarada
-- para el RUT de ABS SPA, y el calendario/contexto de la pareja persona-sociedad.
-- n_same_institution = 0 debe leerse solo como «no aparece coincidencia» en el
-- puente institucional del oro; no prueba ausencia de intervención individual.
SELECT
  ds.person_id, p.full_name, ds.supplier_rut, ds.legal_name,
  ds.participation_type, ds.is_controlling, ds.name_similarity,
  ds.n_orders_during, ds.n_orders_after, ds.n_orders_excluded,
  ds.n_buyers, ds.n_same_institution, ds.n_direct_award, ds.n_agile,
  ds.first_order_date, ds.last_order_date,
  ds.amount_clp_during, ds.amount_uf_during,
  d.declaration_date, d.institution, d.position,
  o.status AS office_status, o.assumed_on
FROM declared_supply ds
JOIN person p USING (person_id)
LEFT JOIN declaration d
  ON d.person_id = ds.person_id AND d.is_current
LEFT JOIN office o USING (person_id)
WHERE ds.supplier_rut = '76505155';

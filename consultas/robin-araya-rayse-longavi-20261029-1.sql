-- Semilla y auditoría del candidato. Ejecutar solo con ec-gold-sql; corte 2026-10-27T15:25:49+00:00.
SELECT p.full_name, d.legal_name, d.supplier_rut, d.supplier_dv,
       d.n_declarants, d.is_controlling, d.participation_type,
       d.n_orders_during, d.n_same_institution, d.amount_clp_during,
       d.first_order_date, d.last_order_date, d.supplier_activity,
       o.position, o.institution, o.status
FROM declared_supply d
JOIN person p USING (person_id)
JOIN office o USING (person_id)
WHERE p.full_name = 'ROBIN DARÍO ARAYA ACEVEDO'
  AND d.supplier_rut = '76484687'
  AND d.n_same_institution > 0;

-- Detalle único de las OCs del proveedor al mismo organismo dentro de la ventana.
SELECT DISTINCT order_code, sent_date, status, route, tender_code,
       buyer_name, amount_clp, amount_uf, timing, same_institution, url
FROM declared_supply_order
WHERE person_id = (
  SELECT person_id FROM person
  WHERE full_name = 'ROBIN DARÍO ARAYA ACEVEDO'
)
  AND supplier_rut = '76484687'
  AND same_institution = TRUE
  AND timing = 'during'
ORDER BY sent_date, order_code;

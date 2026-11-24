-- Confirma el proveedor/identidad por RUT, fechas, estado, causal, comprador y monto.
SELECT DISTINCT
  d.full_name,
  o.supplier_rut,
  o.legal_name,
  o.order_code,
  o.sent_date,
  o.status,
  o.route,
  o.is_direct_award,
  o.is_agile,
  o.buyer_name,
  o.amount_clp,
  o.amount_uf,
  o.same_institution,
  o.timing
FROM declared_supply_order o
JOIN declarant d USING (person_id)
WHERE upper(d.full_name) LIKE '%JUAN%SANTANA PAREDES%'
  AND o.supplier_rut = '77899827'
ORDER BY o.sent_date;

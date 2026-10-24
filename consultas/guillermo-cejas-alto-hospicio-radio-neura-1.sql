-- Corrida 2026-10-24 · pista trato_directo
-- Persona identificada por nombre completo; proveedor por RUT del declarante y la OC.
-- Reproducir conteo, suma nominal CLP/UF, estados y órdenes individuales en la ventana declarada.
SELECT
  dso.order_code, dso.url, dso.sent_date, dso.status, dso.route,
  dso.buyer_name, dso.supplier_rut, dso.legal_name,
  dso.amount_clp, dso.amount_uf, dso.timing, dso.same_institution
FROM declared_supply_order dso
WHERE dso.person_id = 'f6090e109432c17fe6450dc5d022110c'
  AND dso.supplier_rut = '76526315'
  AND dso.timing = 'during'
ORDER BY dso.sent_date;

-- Resumen de la misma relación; se evita duplicar órdenes que aparecen con etiquetas de ventanas distintas.
SELECT
  count(*) AS orders,
  count(*) FILTER (WHERE status = 'Aceptada') AS accepted,
  count(*) FILTER (WHERE status = 'Enviada a proveedor') AS sent_to_supplier,
  sum(amount_clp) AS nominal_clp,
  round(sum(amount_uf), 2) AS uf,
  min(sent_date) AS first_order,
  max(sent_date) AS last_order
FROM declared_supply_order
WHERE person_id = 'f6090e109432c17fe6450dc5d022110c'
  AND supplier_rut = '76526315'
  AND timing = 'during';

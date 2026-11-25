-- Claus Pedro Lindemann Vierth: declaración de CAFRA Ltda. y órdenes únicas a la Municipalidad de Frutillar.
-- Oro de solo lectura; corte: 2026-11-24T20:08:20+00:00.
SELECT
  d.source_id,
  d.declaration_date,
  d.position,
  d.institution,
  c.company_rut,
  c.legal_name,
  c.type AS participation_type,
  c.is_controlling,
  c.quantity,
  c.value_clp AS declared_value_clp,
  o.order_code,
  o.sent_date,
  o.status,
  o.amount_clp AS gold_amount_clp,
  uf.value AS uf_on_sent_date,
  ROUND(o.amount_clp / uf.value, 2) AS gold_amount_uf,
  o.buyer_name,
  o.route,
  o.main_rubro,
  o.url
FROM declaration d
JOIN company c USING (declaration_id)
JOIN purchase_order o ON o.supplier_rut = c.company_rut
JOIN uf_series uf ON uf.date = o.sent_date
WHERE d.person_id = (SELECT person_id FROM person WHERE full_name = 'CLAUS PEDRO LINDEMANN VIERTH')
  AND d.source_id = 4359
  AND c.company_rut = '81209700'
  AND o.order_code IN ('2289-880-SE17', '2289-245-SE18', '2289-845-MC18')
  AND o.buyer_name = 'I MUNICIPALIDAD DE FRUTILLAR'
ORDER BY o.sent_date, d.declaration_date;

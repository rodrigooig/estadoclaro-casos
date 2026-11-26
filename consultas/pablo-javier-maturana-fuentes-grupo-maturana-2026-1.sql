-- Cruce por RUT de la empresa declarada y órdenes de compra en la ventana del oro.
-- Ejecutar exclusivamente con ec-gold-sql.
SELECT
  p.full_name,
  d.source_id,
  d.declaration_date,
  d.position,
  d.institution,
  d.start_date,
  c.legal_name,
  c.company_rut,
  c.type,
  c.quantity,
  c.is_controlling,
  c.value_clp,
  ds.n_orders_during,
  ds.amount_clp_during,
  ds.amount_uf_during,
  ds.n_buyers,
  ds.n_same_institution,
  ds.n_direct_award,
  ds.n_agile,
  ds.name_similarity
FROM declared_supply ds
JOIN person p USING (person_id)
JOIN declaration d ON d.person_id = ds.person_id AND d.is_current
JOIN company c ON c.declaration_id = d.declaration_id
              AND c.company_rut = ds.supplier_rut
WHERE p.full_name = 'PABLO JAVIER MATURANA FUENTES'
  AND ds.supplier_rut = '78215753';

SELECT
  order_code, url, sent_date, status, buyer_name,
  amount_clp, amount_uf, route, tender_code, main_rubro
FROM purchase_order
WHERE supplier_rut = '78215753'
  AND sent_date BETWEEN DATE '2026-05-01' AND DATE '2026-11-26'
ORDER BY sent_date;

SELECT value AS gold_build_date FROM meta WHERE key = 'build_date';

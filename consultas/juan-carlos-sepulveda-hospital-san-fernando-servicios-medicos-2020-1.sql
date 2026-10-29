-- Cruce por RUT de sociedad declarada; distingue órdenes previas y posteriores
-- a la fecha de la declaración (la foto no prueba titularidad antes de esa fecha).
SELECT
  (SELECT value FROM meta WHERE key='build_date') AS gold_cut,
  d.source_id, d.declaration_date, d.position, d.institution, d.start_date,
  c.legal_name, c.company_rut, c.type, c.quantity, c.is_controlling,
  c.acquisition_date AS acquisition_date_declared,
  po.order_code, po.sent_date,
  CASE WHEN po.sent_date < d.declaration_date THEN 'anterior a declaración'
       ELSE 'en o después de declaración' END AS timing_vs_declaration,
  po.status, po.route, po.buyer_name, po.amount_clp, po.amount_uf,
  po.main_rubro, po.url
FROM declaration d
JOIN company c USING (declaration_id)
JOIN purchase_order po ON po.supplier_rut=c.company_rut
WHERE d.person_id='83f57279cd59736eb490a27324bb0cbd'
  AND c.company_rut='76759005'
  AND po.buyer_name='SERVICIO DE SALUD HOSPITAL DE SAN FERNANDO'
  AND po.sent_date BETWEEN DATE '2018-01-01' AND DATE '2020-12-31'
ORDER BY po.sent_date, po.order_code;

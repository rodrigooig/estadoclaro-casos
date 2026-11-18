-- Corte del oro: 2026-11-17T18:25:42+00:00
-- Cruce declarado de participación por RUT exacto con proveedor estatal.
SELECT d.full_name, d.person_id, dec.declaration_id, dec.declaration_date,
       dec.institution, dec.position, dec.source_id,
       ds.supplier_name, ds.supplier_rut, ds.is_controlling,
       ds.participation_type, ds.n_orders_during, ds.n_same_institution,
       ds.n_direct_award, ROUND(ds.amount_clp_during) AS amount_clp_during,
       ds.first_order_date, ds.last_order_date
FROM declared_supply ds
JOIN declarant d USING (person_id)
JOIN declaration dec USING (person_id)
WHERE d.full_name = 'ALBERTO RÍOS MORENO'
  AND ds.supplier_rut = '92580000'
ORDER BY dec.declaration_date DESC;

-- Compras al Ministerio Público por RUT proveedor exacto (incluye las previas al cargo).
SELECT order_code, sent_date, status, route, is_direct_award,
       buyer_name, amount_clp, amount_uf, currency, url, exclusion_reason
FROM purchase_order
WHERE supplier_rut = '92580000'
  AND buyer_name ILIKE '%ministerio publico%'
ORDER BY sent_date;

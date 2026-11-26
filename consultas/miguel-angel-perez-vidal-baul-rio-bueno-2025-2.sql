-- Declaration and purchase-order rows for the selected piste.
-- Run only through ec-gold-sql (read-only); no API/public endpoint is used.
SELECT DISTINCT
  d.source_id,
  d.declaration_date,
  d.declaration_type,
  d.position,
  d.institution,
  c.legal_name,
  c.company_rut,
  c.type AS participation_type,
  c.quantity,
  c.is_controlling,
  o.order_code,
  o.sent_date,
  o.status,
  o.route,
  o.buyer_name,
  o.amount_clp,
  o.amount_uf,
  o.main_rubro,
  o.timing,
  o.url
FROM declaration d
JOIN person p USING (person_id)
JOIN company c USING (declaration_id)
JOIN declared_supply_order o
  ON o.person_id = p.person_id
 AND o.declaration_id = d.declaration_id
 AND o.asset_id = c.asset_id
WHERE p.full_name = 'MIGUEL ANGEL PEREZ VIDAL'
  AND c.company_rut = '76690595'
  AND o.order_code IN ('3850-145-AG25', '3850-691-AG25')
ORDER BY o.sent_date, d.declaration_date;

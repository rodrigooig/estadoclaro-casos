-- Identidad, sociedad declarada y órdenes durante las ventanas del cruce.
-- Ejecutar solo con ec-gold-sql; corte de referencia: meta.build_date 2026-11-22T04:10:18+00:00.
SELECT
  p.full_name,
  d.declaration_date,
  d.source_id,
  d.institution,
  d.position,
  c.company_rut,
  c.legal_name,
  c.type,
  c.is_controlling,
  c.quantity,
  c.value_clp,
  c.business_activity,
  so.order_code,
  so.url,
  so.sent_date,
  so.status,
  so.route,
  so.is_direct_award,
  so.tender_code,
  so.buyer_name,
  so.amount_clp,
  so.amount_uf,
  so.name_similarity,
  so.same_institution,
  so.timing
FROM person p
JOIN declaration d USING (person_id)
JOIN company c USING (declaration_id)
JOIN declared_supply_order so
  ON so.person_id = p.person_id
 AND so.declaration_id = c.declaration_id
 AND so.asset_id = c.asset_id
WHERE p.full_name = 'FERNANDO AGUSTÍN ANAIS SALAS'
ORDER BY so.sent_date, so.order_code, d.declaration_date;

-- Semilla: coincidencia por RUT societario entre participación declarada
-- y orden de compra de FONASA mientras Javier Etcheberry figuraba en el SII.
-- Ejecutar solo con: ec-gold-sql consultas/javier-etcheberry-multicaja-fonasa-sii-2025-1.sql
SELECT
  p.full_name,
  d.source_id AS declaration_source_id,
  d.declaration_date,
  d.start_date,
  d.position,
  d.institution,
  c.company_rut,
  c.legal_name AS declared_company,
  c.type AS participation_type,
  c.quantity AS shares_declared,
  c.is_controlling,
  c.value_clp AS declared_value_clp,
  dso.order_code,
  dso.sent_date,
  dso.status AS order_status,
  dso.route,
  dso.tender_code,
  dso.buyer_name,
  dso.amount_clp,
  dso.amount_uf,
  dso.timing,
  dso.same_institution
FROM declared_supply_order AS dso
JOIN declaration AS d ON d.declaration_id = dso.declaration_id
JOIN person AS p ON p.person_id = dso.person_id
JOIN company AS c
  ON c.declaration_id = dso.declaration_id
 AND c.asset_id = dso.asset_id
WHERE p.full_name = 'JAVIER ETCHEBERRY CELHAY'
  AND c.company_rut = '76828790'
  AND dso.order_code = '591-14-SE25'
  AND dso.is_primary_for_person
  AND dso.timing = 'during'
ORDER BY d.declaration_date;

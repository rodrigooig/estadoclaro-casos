-- Reproduce identidad, participación declarada, periodo/cargo y OC seleccionada.
-- Gold: solo lectura; corte esperado build_date 2026-10-23T14:20:50+00:00.
SELECT
  p.full_name,
  d.declaration_id,
  d.declaration_date,
  d.start_date,
  d.end_date,
  d.institution,
  d.position,
  d.source_id,
  c.company_rut,
  c.legal_name,
  c.type AS participation_type,
  c.quantity,
  c.is_controlling,
  c.acquisition_date
FROM declarant p
JOIN declaration d USING (person_id)
JOIN company c USING (declaration_id)
WHERE upper(p.full_name) = 'JAVIER ALLENDES FERNANDEZ'
  AND c.company_rut = '77127975'
ORDER BY d.declaration_date;

-- OC con código exacto; no contarla dos veces por las dos etiquetas temporales.
SELECT DISTINCT
  order_code, sent_date, status, route, buyer_name, amount_clp, amount_uf,
  main_rubro, timing, url, legal_name, supplier_rut
FROM declared_supply_order
WHERE supplier_rut = '77127975'
  AND order_code = '768-85-SE24';

-- La cobertura de campaña del oro no devuelve coincidencia para el nombre exacto.
SELECT election_name, election_year, account_type, office, audit_status, outcome,
       expense_clp, rejected_expense_clp, source_uri
FROM campaign
WHERE upper(name) = 'JAVIER ALLENDES FERNANDEZ';
SELECT ce.election_key, ce.document_date, ce.supplier_rut, ce.supplier_name,
       ce.amount_clp, ce.document_type, ce.is_rejected
FROM campaign_expense ce
JOIN campaign c USING (campaign_id)
WHERE upper(c.name) = 'JAVIER ALLENDES FERNANDEZ';

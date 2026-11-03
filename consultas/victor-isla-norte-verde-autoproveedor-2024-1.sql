-- Semilla de la pista; ejecutar únicamente mediante ec-gold-sql.
-- Corte pre-run: 2026-10-30T15:53:06+00:00
SELECT
  p.full_name,
  d.declaration_id,
  d.source_id AS infoprobidad_id,
  d.declaration_date,
  d.institution,
  d.position,
  c.legal_name,
  c.company_rut,
  c.quantity,
  c.is_controlling,
  cs.line_id,
  cs.campaign_id,
  cs.amount_clp AS reported_campaign_expense_clp,
  cs.amount_uf,
  cs.is_rejected,
  cs.reimbursement_type,
  cs.description
FROM campaign_self_supply cs
JOIN company c
  ON c.declaration_id = cs.declaration_id AND c.asset_id = cs.asset_id
JOIN declaration d ON d.declaration_id = cs.declaration_id
JOIN declarant p ON p.person_id = cs.person_id
WHERE cs.person_id = '1234db19507ee6db2dad5ec8734d4c6b'
  AND c.company_rut = '76896156'
ORDER BY cs.amount_clp DESC;

-- Contratación pública hallada por el RUT exacto de la sociedad.
SELECT order_code, sent_date, status, buyer_name, amount_clp, amount_uf,
       supplier_rut, supplier_dv, supplier_name
FROM purchase_order
WHERE supplier_rut = '76896156'
ORDER BY sent_date;

-- Resultado publicado por SERVEL para la cuenta electoral de 2024.
SELECT *
FROM uf_series
WHERE date = DATE '2024-10-24';

-- EstadoClaro investigation lead: Pablo Allard Serrano / Allard Asociados SpA
-- Read-only against gold.duckdb; artifact cutoff: 2026-09-29T15:40:44+00:00.
-- Reproduce the declared supplier link and the single same-institution order.
SELECT
    p.full_name,
    d.declaration_id,
    d.declaration_date,
    d.institution,
    d.position,
    c.legal_name AS declared_company,
    c.company_rut AS company_rut,
    c.quantity AS declared_percentage,
    c.is_controlling AS declared_controller,
    c.acquisition_date,
    c.business_activity,
    o.order_code,
    o.sent_date,
    o.status,
    o.route,
    o.is_direct_award,
    o.buyer_name,
    o.amount_clp AS artifact_amount_clp,
    o.amount_uf AS artifact_amount_uf,
    o.main_rubro,
    o.same_institution,
    o.url AS purchase_order_url
FROM person p
JOIN declaration d USING (person_id)
JOIN company c USING (declaration_id)
JOIN declared_supply_order o
  ON o.person_id = p.person_id
 AND o.declaration_id = d.declaration_id
 AND o.supplier_rut = c.company_rut
WHERE p.full_name = 'PABLO ALLARD SERRANO'
  AND c.company_rut = '76598791'
  AND o.order_code = '2659-252-SE23'
  AND o.is_primary_for_person IS TRUE
  AND o.same_institution IS TRUE
ORDER BY d.declaration_date DESC;

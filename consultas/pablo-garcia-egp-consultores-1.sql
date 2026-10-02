-- EstadoClaro investigation lead: Pablo García González / EGP Consultores Ltda.
-- Read-only against gold.duckdb; artifact cutoff: 2026-10-02T15:43:07+00:00.
-- Primary-query view: full-name identity, dated company declarations and unique primary orders.
SELECT
    p.full_name,
    d.declaration_date,
    d.declaration_type,
    d.institution,
    d.position,
    c.legal_name AS declared_company,
    c.company_rut AS declared_company_rut,
    c.quantity AS declared_percentage,
    c.is_controlling AS declared_controller,
    o.order_code,
    o.sent_date,
    o.status,
    o.route,
    o.is_direct_award,
    o.tender_code,
    o.buyer_name,
    o.amount_clp AS artifact_amount_clp,
    o.timing,
    o.same_institution,
    o.is_primary_for_person,
    o.url AS purchase_order_url
FROM person p
JOIN declaration d USING (person_id)
JOIN company c USING (declaration_id)
JOIN declared_supply_order o
  ON o.person_id = p.person_id
 AND o.declaration_id = d.declaration_id
 AND o.supplier_rut = c.company_rut
WHERE p.full_name = 'PABLO ENRIQUE GARCÍA GONZÁLEZ'
  AND c.company_rut = '76121832'
  AND o.timing = 'during'
  AND o.is_primary_for_person IS TRUE
ORDER BY o.sent_date, o.order_code, d.declaration_date DESC;

-- Tres compras únicas en la ventana del cargo; deduplicar filas repetidas por declaración.
SELECT DISTINCT
    p.full_name,
    d.declaration_date,
    d.source_id,
    d.institution,
    d.position,
    c.legal_name,
    c.company_rut,
    c.type AS participation_type,
    c.quantity,
    c.is_controlling,
    o.order_code,
    o.url,
    o.sent_date,
    o.status,
    o.route,
    o.is_direct_award,
    o.is_agile,
    o.tender_code,
    o.buyer_name,
    o.amount_clp,
    o.amount_uf,
    o.main_rubro,
    o.exclusion_reason,
    o.same_institution
FROM person p
JOIN declarant x USING (person_id)
JOIN declaration d USING (person_id)
JOIN company c USING (declaration_id)
JOIN declared_supply_order o
  ON o.person_id = p.person_id
 AND o.declaration_id = d.declaration_id
 AND o.supplier_rut = CAST(c.company_rut AS VARCHAR)
WHERE p.full_name = 'CARLOS RAMOS GARCÍA'
  AND c.company_rut = '76529353'
  AND o.sent_date BETWEEN DATE '2025-01-06' AND DATE '2025-12-31'
ORDER BY o.sent_date, o.order_code;

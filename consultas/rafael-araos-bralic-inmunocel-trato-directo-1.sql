-- Semilla: proveedores con órdenes directas a INMUNOCEL SPA durante la declaración.
-- Llave: RUT societario (company_rut en declaración = supplier_rut sin DV en Mercado Público).
SELECT DISTINCT
    d.person_id,
    d.declaration_id,
    d.declaration_date,
    d.institution,
    c.legal_name,
    c.company_rut,
    c.value_clp,
    c.type,
    c.quantity,
    c.is_controlling,
    po.order_code,
    po.sent_date,
    po.status,
    po.route,
    po.buyer_name,
    po.amount_clp,
    po.amount_uf,
    po.url
FROM declaration d
JOIN company c USING (declaration_id)
JOIN declared_supply_order po
  ON po.person_id = d.person_id
 AND po.declaration_id = d.declaration_id
 AND po.supplier_rut = c.company_rut
WHERE d.person_id = '32c8ca4f6aae832a55046bfb0047664e'
  AND c.company_rut = '76818011'
  AND po.is_direct_award
ORDER BY po.sent_date, po.order_code;

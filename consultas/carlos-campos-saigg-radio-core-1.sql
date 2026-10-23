-- Carlos Vicente Campos Saigg: declaración de control y OC del GORE.
-- Ejecutar solo con ec-gold-sql. Corte: meta.build_date.
SELECT key, value
FROM meta
WHERE key = 'build_date';

SELECT
    d.source_id,
    d.declaration_date,
    d.position,
    d.institution,
    c.legal_name,
    c.company_rut,
    c.type,
    c.quantity,
    c.is_controlling
FROM declaration AS d
JOIN company AS c USING (declaration_id)
WHERE d.source_id = '546600'
  AND c.company_rut = '76199836';

SELECT
    p.order_code,
    p.sent_date,
    p.status,
    p.route,
    p.is_direct_award,
    p.buyer_name,
    s.supplier_rut,
    s.supplier_dv,
    s.name AS supplier_name,
    p.amount_clp,
    p.amount_uf,
    p.currency
FROM purchase_order AS p
JOIN supplier AS s USING (supplier_rut)
WHERE p.order_code = '868-225-SE21';

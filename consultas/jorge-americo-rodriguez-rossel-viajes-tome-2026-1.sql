-- Semilla y verificación de sociedades declaradas × Mercado Público × Servel
SELECT
    p.full_name,
    d.source_id,
    d.declaration_date,
    d.institution,
    d.position,
    c.company_rut,
    c.legal_name,
    c.type,
    c.quantity,
    c.is_controlling,
    s.n_orders_during,
    s.n_same_institution,
    s.n_direct_award,
    s.n_agile,
    s.amount_clp_during,
    s.amount_uf_during,
    s.first_order_date,
    s.last_order_date,
    s.name_similarity
FROM declared_supply s
JOIN person p ON p.person_id = s.person_id
JOIN declaration d ON d.person_id = s.person_id AND d.is_current
JOIN company c ON c.declaration_id = d.declaration_id AND c.company_rut = s.supplier_rut
WHERE p.full_name = 'JORGE AMÉRICO RODRÍGUEZ ROSSEL';

-- Totales de órdenes únicas por RUT de proveedor y fecha de envío; una fila por OC.
SELECT
    count(*) AS n_orders,
    min(sent_date) AS first_date,
    max(sent_date) AS last_date,
    round(sum(amount_clp)) AS amount_clp,
    round(sum(amount_uf), 2) AS amount_uf,
    count(*) FILTER (WHERE is_direct_award) AS direct_awards,
    count(*) FILTER (WHERE is_agile) AS agile,
    count(*) FILTER (WHERE route = 'Proveniente de licitación pública') AS public_tender,
    count(DISTINCT buyer_name) AS buyers
FROM purchase_order
WHERE supplier_rut = '77655371'
  AND sent_date BETWEEN DATE '2025-01-01' AND DATE '2026-12-31';

-- Comprador, estado y ruta por orden, para separar los procesos competitivos de Compra Ágil.
SELECT order_code, sent_date, status, route, is_direct_award, is_agile,
       buyer_name, tender_code, amount_clp, amount_uf, main_rubro
FROM purchase_order
WHERE supplier_rut = '77655371'
  AND sent_date BETWEEN DATE '2025-01-01' AND DATE '2026-12-31'
ORDER BY sent_date, order_code;

-- Búsqueda del nombre exacto en el universo de campañas incorporado al oro.
SELECT c.election_key, c.name, c.office, c.region, c.territory, c.source_uri
FROM campaign c
WHERE upper(c.name) = 'JORGE AMÉRICO RODRÍGUEZ ROSSEL';

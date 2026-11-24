-- Hecho base: la participación declarada por Pamela Morales Rubilar y el proveedor estatal
-- se vinculan por el RUT exacto. La suma atribuida al período no acredita intervención.
WITH declaration_rows AS (
    SELECT d.declaration_id, d.source_id, d.declaration_date, d.position, d.institution,
           p.person_id, p.full_name, c.company_rut, c.legal_name, c.type,
           c.quantity, c.is_controlling, c.value_clp, c.currency
    FROM declaration d
    JOIN person p USING (person_id)
    JOIN company c USING (declaration_id)
    WHERE d.source_id IN ('5112757', '5112762')
      AND c.company_rut = '77139269'
), orders AS (
    SELECT DISTINCT order_code, url, sent_date, status, route, is_direct_award,
           is_agile, buyer_name, amount_clp, amount_uf, timing, same_institution
    FROM declared_supply_order
    WHERE person_id = 'c3ed588d1307614a77fae4cf5e9a05a5'
      AND supplier_rut = '77139269'
)
SELECT 'declaration' AS record_type,
       source_id AS record_id,
       declaration_date AS record_date,
       position,
       institution,
       full_name AS person_or_supplier,
       company_rut AS rut,
       legal_name,
       type AS participation_type,
       quantity AS participation_quantity,
       is_controlling,
       value_clp AS amount_clp,
       currency,
       NULL::VARCHAR AS buyer_name,
       NULL::VARCHAR AS order_status,
       NULL::VARCHAR AS route,
       NULL::BOOLEAN AS is_direct_award,
       NULL::BOOLEAN AS is_agile,
       NULL::VARCHAR AS timing,
       NULL::BOOLEAN AS same_institution
FROM declaration_rows
UNION ALL
SELECT 'order', order_code, CAST(sent_date AS VARCHAR), NULL, NULL,
       'CALAFATE LIMITADA / ALARCON MORALES ASOCIADOS LIMITADA', '77139269',
       NULL, NULL, NULL, NULL, amount_clp, 'CLP', buyer_name, status, route,
       is_direct_award, is_agile, timing, same_institution
FROM orders
ORDER BY record_type, record_date DESC, record_id;

-- El corte de este artefacto se cita aparte para reproducibilidad.
-- SELECT value AS build_date FROM meta WHERE key = 'build_date';

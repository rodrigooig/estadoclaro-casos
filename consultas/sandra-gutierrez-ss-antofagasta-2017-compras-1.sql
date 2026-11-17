-- Semilla de la corrida: sociedades declaradas que venden al mismo organismo.
SELECT p.full_name, d.position, d.institution, d.declaration_date,
       s.legal_name, s.supplier_rut, s.order_code, s.sent_date, s.status,
       s.route, s.is_direct_award, s.is_agile, s.amount_clp, s.amount_uf,
       s.timing, s.same_institution
FROM declared_supply_order s
JOIN declaration d ON d.declaration_id = s.declaration_id
JOIN person p ON p.person_id = s.person_id
WHERE s.same_institution IS TRUE
  AND s.is_primary_for_person IS TRUE
ORDER BY s.amount_clp DESC NULLS LAST;

-- Confirmación individual y evitar duplicar la misma OC entre declaraciones.
SELECT p.full_name, d.source_id, d.declaration_date, d.declaration_type,
       d.position, d.institution, d.start_date,
       c.legal_name, c.company_rut, c.type, c.quantity, c.is_controlling,
       s.order_code, s.url, s.sent_date, s.status, s.route, s.amount_clp,
       s.amount_uf, s.buyer_name, s.timing, s.same_institution,
       s.is_primary_for_person, s.name_similarity
FROM declared_supply_order s
JOIN declaration d ON d.declaration_id = s.declaration_id
JOIN person p ON p.person_id = s.person_id
JOIN company c ON c.declaration_id = s.declaration_id
WHERE c.company_rut = '76587467'
  AND p.full_name ILIKE '%SANDRA VANESSA GUTIERREZ ARDAYA%'
ORDER BY s.sent_date, s.order_code;

-- Total por órdenes únicas (una orden aparece asociada a más de una foto de declaración).
SELECT count(DISTINCT order_code) AS n_ordenes,
       sum(amount_clp) FILTER (WHERE is_primary_for_person) AS clp,
       sum(amount_uf) FILTER (WHERE is_primary_for_person) AS uf
FROM declared_supply_order
WHERE supplier_rut = '76587467';

-- UF oficial incorporada al artefacto, al día de envío de cada grupo de órdenes.
SELECT date, value FROM uf_series
WHERE date IN ('2017-10-20', '2018-07-06')
ORDER BY date;

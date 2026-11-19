-- Identidad declarada, cargo y participación en la sociedad al 22-06-2026.
SELECT p.person_id, p.full_name, d.source_id, d.declaration_date, d.institution,
       d.position, d.comuna, d.duty_comuna, d.start_date, d.end_date,
       c.company_rut, c.legal_name, c.type, c.quantity, c.value_clp,
       c.business_activity, c.is_controlling
FROM person p
JOIN declaration d USING (person_id)
JOIN company c USING (declaration_id)
WHERE p.full_name = 'JORGE GABRIEL GONZALEZ SALAZAR'
  AND d.source_id = '5118662'
  AND c.company_rut = '76164688';

-- Resumen del cruce por RUT societario; suma del oro es solo señal exploratoria.
SELECT person_id, supplier_rut, legal_name, n_orders_during, n_orders_after,
       n_buyers, n_same_institution, n_direct_award, n_agile,
       first_order_date, last_order_date, amount_clp_during, amount_uf_during,
       name_similarity
FROM declared_supply
WHERE person_id = (SELECT person_id FROM person
                   WHERE full_name = 'JORGE GABRIEL GONZALEZ SALAZAR' LIMIT 1)
  AND supplier_rut = '76164688';
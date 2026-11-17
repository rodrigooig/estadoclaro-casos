-- Corte gold: 2026-11-16T20:17:26+00:00
-- Comprueba la declaración vigente, participación y cruce de compras del RUT societario.
SELECT p.full_name, d.declaration_date, d.source_id, d.institution, d.position,
       c.legal_name, c.company_rut, c.type, c.quantity, c.value_clp,
       c.is_controlling, c.acquisition_date,
       ds.n_orders_during, ds.n_same_institution, ds.n_direct_award,
       ds.n_agile, ds.n_buyers, ds.amount_clp_during, ds.amount_uf_during,
       ds.first_order_date, ds.last_order_date
FROM person p
JOIN declaration d USING (person_id)
JOIN company c USING (declaration_id)
JOIN declared_supply ds
  ON ds.person_id = p.person_id
 AND ds.supplier_rut = CAST(c.company_rut AS BIGINT)
WHERE p.person_id = 'efa302c4236dadf4b31b0aae00fa2533'
  AND c.company_rut = '76958669'
ORDER BY d.declaration_date DESC;

-- Órdenes principales asociadas a la persona/sociedad; same_institution NULL se conserva.
SELECT order_code, url, sent_date, status, route, is_direct_award, is_agile,
       tender_code, buyer_name, buyer_key, amount_clp, main_rubro, timing,
       same_institution, exclusion_reason
FROM declared_supply_order
WHERE person_id = 'efa302c4236dadf4b31b0aae00fa2533'
  AND supplier_rut = 76958669
  AND is_primary_for_person
  AND timing = 'during'
ORDER BY sent_date, order_code;

-- Presencia en la tabla de campañas del corte (0 filas en esta corrida).
SELECT campaign_id, election_year, name, office, territory, audit_status, outcome, source_uri
FROM campaign
WHERE person_id = 'efa302c4236dadf4b31b0aae00fa2533';

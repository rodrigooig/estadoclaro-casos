-- Resumen de estados institucionales y búsqueda limitada de registros electorales/campaña por person_id.
SELECT same_institution, COUNT(DISTINCT order_code) AS order_codes,
       SUM(amount_clp) AS clp, SUM(amount_uf) AS uf
FROM declared_supply_order
WHERE person_id = (SELECT person_id FROM person
                   WHERE full_name = 'JORGE GABRIEL GONZALEZ SALAZAR' LIMIT 1)
  AND supplier_rut = '76164688'
  AND is_primary_for_person
GROUP BY same_institution
ORDER BY same_institution;

SELECT COUNT(*) AS campaign_rows
FROM campaign
WHERE person_id = (SELECT person_id FROM person
                   WHERE full_name = 'JORGE GABRIEL GONZALEZ SALAZAR' LIMIT 1);

SELECT COUNT(*) AS campaign_self_supply_rows
FROM campaign_self_supply
WHERE person_id = (SELECT person_id FROM person
                   WHERE full_name = 'JORGE GABRIEL GONZALEZ SALAZAR' LIMIT 1);
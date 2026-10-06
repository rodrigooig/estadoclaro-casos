-- Person-specific join check: do any Forus company orders appear in the declared-supply-order bridge for this declarant?
-- Gold cutoff: 2026-10-06T15:56:08+00:00. Execute with ec-gold-sql.
SELECT order_code, supplier_rut, legal_name, sent_date, buyer_name,
       amount_clp, same_institution, is_primary_for_person
FROM declared_supply_order
WHERE person_id = (
    SELECT person_id FROM declarant
    WHERE full_name = 'PEDRO ROBERTO AIGNEREN RÍOS'
)
  AND (supplier_rut = '86963200' OR legal_name ILIKE '%FORUS%')
ORDER BY sent_date, order_code;
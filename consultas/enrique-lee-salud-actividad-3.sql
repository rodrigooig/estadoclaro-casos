-- Lead: enrique-lee-salud-actividad
-- Artifact cutoff: 2026-10-02T15:43:07+00:00; read-only run 2026-10-03.
-- Independent check for linked declaration/procurement bridge rows by exact company RUT.
SELECT order_code, sent_date, supplier_rut, legal_name, buyer_name,
       amount_clp, route, is_direct_award, same_institution,
       is_primary_for_person
FROM declared_supply_order
WHERE regexp_replace(supplier_rut, '[^0-9]', '', 'g') = '768752400'
ORDER BY sent_date DESC;

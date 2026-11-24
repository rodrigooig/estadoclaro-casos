-- Búsqueda Servel en el universo electoral incorporado al gold.
-- Corte esperado: meta.build_date 2026-11-24T20:08:20+00:00
SELECT name, election_name, election_year, office, party, audit_status
FROM campaign
WHERE upper(name) LIKE '%TACON%';

-- Corte de oro: 2026-10-21T19:32:15+00:00
-- Identidad exacta y cobertura de declaraciones/empresas/proveedores enlazados.
WITH p AS (
  SELECT person_id, full_name
  FROM person
  WHERE upper(full_name) = 'LUIS ROBERTO REYES ÁLVAREZ'
)
SELECT p.person_id, p.full_name,
       count(DISTINCT d.declaration_id) AS declarations,
       min(d.declaration_date) AS first_date,
       max(d.declaration_date) AS last_date,
       count(DISTINCT c.company_rut) AS declared_company_ruts,
       count(DISTINCT cs.supplier_rut) AS linked_supplier_ruts
FROM p
LEFT JOIN declaration d USING (person_id)
LEFT JOIN company c USING (declaration_id)
LEFT JOIN company_supply cs ON cs.person_id = p.person_id
GROUP BY 1, 2;

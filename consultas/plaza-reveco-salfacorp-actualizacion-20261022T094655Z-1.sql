-- Contrasta etiqueta «SALFACORP» con RUT declarados y RUT de emisora/proveedor.
-- Solo busca patrón descriptivo; no identifica instrumento subyacente del declarante.
SELECT
    c.legal_name,
    c.company_rut,
    COUNT(*) AS rows,
    COUNT(DISTINCT d.person_id) AS declarants,
    MIN(d.declaration_date) AS first_declaration,
    MAX(d.declaration_date) AS last_declaration,
    string_agg(DISTINCT p.full_name, ' | ' ORDER BY p.full_name) AS declarants_full_name
FROM company AS c
JOIN declaration AS d USING (declaration_id)
JOIN person AS p USING (person_id)
WHERE upper(c.legal_name) LIKE '%SALFACORP%'
   OR c.company_rut IN ('968858807', '936590004')
GROUP BY c.legal_name, c.company_rut
ORDER BY declarants DESC, c.company_rut;

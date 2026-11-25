-- Declaraciones primarias de la sociedad, con su fecha y cargo; RUT por coincidencia exacta.
SELECT d.declaration_date, d.source_id, d.institution, d.position,
       c.company_rut, c.legal_name, c.type, c.quantity, c.value_clp,
       c.is_controlling
FROM company c
JOIN declaration d USING (declaration_id)
WHERE d.person_id = 'b0d986b516a49eca092f5962d9978dab'
  AND c.company_rut = '76046989'
ORDER BY d.declaration_date;

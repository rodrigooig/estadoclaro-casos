-- Pista: Claudia Paz Miranda Fuentes / participación declarada en SURA y compras del Poder Judicial.
-- Corte oro: 2026-10-27T15:25:49+00:00
SELECT d.declaration_id, d.source_id, d.declaration_date, d.position, d.institution,
       p.full_name, c.legal_name, c.company_rut, c.type, c.quantity, c.value_clp, c.is_controlling
FROM declaration d JOIN person p USING (person_id) JOIN company c USING (declaration_id)
WHERE p.full_name = 'CLAUDIA PAZ MIRANDA FUENTES' AND c.company_rut = '99017000'
ORDER BY d.declaration_date;

SELECT s.person_id, s.supplier_name, s.supplier_rut, s.participation_type, s.is_controlling,
       s.n_orders_during, s.n_same_institution, s.n_direct_award, s.amount_clp_during,
       s.amount_uf_during, s.name_similarity, s.n_declarants, s.first_order_date, s.last_order_date
FROM declared_supply s JOIN person p USING (person_id)
WHERE p.full_name = 'CLAUDIA PAZ MIRANDA FUENTES' AND s.supplier_rut = '99017000';

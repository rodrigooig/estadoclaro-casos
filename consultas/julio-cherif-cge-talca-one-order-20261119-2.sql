-- Reproducción de la titularidad declarada y del dato de la orden primaria.
-- No atribuye intervención al declarante.
SELECT p.full_name, d.source_id, d.declaration_date, d.position, d.institution,
       co.company_rut, co.legal_name, co.type, co.quantity, co.is_controlling,
       co.value_clp, co.acquisition_date, co.business_activity
FROM person p
JOIN declaration d ON d.person_id = p.person_id
JOIN company co ON co.declaration_id = d.declaration_id
WHERE d.source_id IN (751883, 892092)
  AND co.company_rut = '76411321'
ORDER BY d.declaration_date;

-- Compras de CGE a Municipalidad de Talca durante el tramo declarado.
-- La fila 2291-692-SE22 es además cotejada contra su página primaria.
SELECT order_code, sent_date, status, route, is_direct_award, is_agile,
       buyer_name, supplier_rut, supplier_name, amount_clp, amount_uf,
       main_rubro, url
FROM purchase_order
WHERE supplier_rut = '76411321'
  AND buyer_name = 'I MUNICIPALIDAD DE TALCA'
  AND sent_date BETWEEN DATE '2021-12-09' AND DATE '2022-06-13'
ORDER BY sent_date;

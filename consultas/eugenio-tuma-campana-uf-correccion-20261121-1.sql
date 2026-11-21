-- Revisión de la equivalencia UF del caso publicado de Eugenio Tuma.
-- El monto CLP y la fecha salen del reporte Servel; la UF se une por la fecha del gasto.
-- El importe existente en campaign_expense.amount_uf queda expuesto para contraste.
SELECT
  p.full_name,
  ce.document_number,
  ce.document_date,
  ce.amount_clp,
  ce.amount_uf AS campaign_amount_uf,
  uf.value AS uf_on_document_date_clp,
  ROUND(ce.amount_clp / uf.value, 2) AS recalculated_uf,
  ROUND((ce.amount_clp / uf.value) - ce.amount_uf, 2) AS difference_uf,
  ce.supplier_rut,
  ce.is_rejected
FROM campaign_expense ce
JOIN campaign ca USING (campaign_id)
JOIN person p ON p.person_id = ca.person_id
JOIN uf_series uf ON uf.date = ce.document_date
WHERE p.full_name = 'EUGENIO TUMA ZEDAN'
  AND ca.election_year = 2025
  AND ce.document_number = '55'
  AND ce.supplier_rut = '76445700';

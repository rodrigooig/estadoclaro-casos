-- Corte: meta.build_date 2026-10-02T15:43:07+00:00
-- Ejecutada en solo lectura con ec-gold-sql el 2026-10-03.
-- Track A: identidad societaria por nombre completo + RUT societario; snapshots declarativos.
SELECT d.declaration_id, d.declaration_date, d.institution, d.position,
       c.legal_name, c.company_rut, c.quantity, c.is_controlling
FROM declaration d
JOIN person p USING (person_id)
JOIN company c USING (declaration_id)
WHERE p.full_name = 'MIGUEL ANGEL PEREZ VIDAL'
  AND c.company_rut = '76690595'
ORDER BY d.declaration_date;

-- Track B: códigos únicos, importes canónicos y fechas en Mercado Público.
SELECT order_code, sent_date, buyer_name, supplier_name, amount_clp, currency
FROM purchase_order
WHERE order_code IN ('3850-145-AG25', '3850-691-AG25')
ORDER BY sent_date;

-- Track C: total sin duplicar órdenes espejo por declaración/ventana.
SELECT COUNT(DISTINCT order_code) AS unique_orders,
       SUM(amount_clp) AS sum_clp
FROM purchase_order
WHERE order_code IN ('3850-145-AG25', '3850-691-AG25');

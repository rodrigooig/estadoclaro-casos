-- Conversión de los importes al valor de la UF en la fecha del documento.
SELECT amount_clp, value AS uf_clp, amount_clp / value AS amount_uf
FROM (VALUES (2768409), (1991591), (4760000)) AS amounts(amount_clp)
CROSS JOIN uf_series
WHERE date = DATE '2025-11-14';

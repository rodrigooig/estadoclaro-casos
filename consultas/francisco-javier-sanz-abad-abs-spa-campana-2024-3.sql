-- UF oficial del oro al día de la factura Servel (08-10-2024) y conversión
-- de CLP $2.951.200; mantener separada de la columna amount_uf heredada en
-- campaign_expense, que registra 77.73 UF y difiere 0.05 UF.
SELECT date, value AS uf_clp, round(2951200 / value, 2) AS gasto_uf_recalculado
FROM uf_series
WHERE date = DATE '2024-10-08';

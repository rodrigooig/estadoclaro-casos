-- UF de fecha de la declaración (26-12-2024) y de la OC (27-12-2024).
SELECT date, value AS uf_clp,
       400000 / value AS declared_company_value_uf
FROM uf_series
WHERE date IN ('2024-12-26', '2024-12-27')
ORDER BY date;

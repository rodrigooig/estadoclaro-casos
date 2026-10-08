-- Revisión independiente: fuente estructurada del gold para los cinco registros identificados.
-- Corte esperado: meta.build_date = 2026-10-08T12:48:32+00:00.
-- Filas asset por snapshot: APV y dos vehículos cuando existan; no sumar fechas ni inferir saldo real.
SELECT
    d.declaration_id,
    p.full_name,
    d.declaration_date,
    d.declaration_type,
    d.position AS cargo_o_funcion,
    d.institution AS organismo,
    f.type AS tipo_instrumento,
    f.issuer AS emisor,
    f.country AS pais_emision,
    f.acquisition_date AS fecha_adquisicion_gold,
    f.quantity AS cantidad_representada_gold,
    f.currency AS moneda_instrumento,
    f.value_clp AS valor_corriente_en_plaza_clp,
    a.asset_type AS tipo_fila_asset,
    a.value_clp AS valor_clp_asset,
    a.declared_value AS valor_declarado_asset,
    a.currency AS moneda_asset,
    a.implausible AS marca_implausible_asset,
    a.no_amount AS marca_sin_monto_asset,
    count(*) OVER (PARTITION BY d.declaration_id) AS filas_asset_en_snapshot,
    sum(a.value_clp) OVER (PARTITION BY d.declaration_id) AS total_asset_gold_clp
FROM declaration d
JOIN person p ON p.person_id = d.person_id
LEFT JOIN financial_asset f ON f.declaration_id = d.declaration_id
LEFT JOIN asset a ON a.declaration_id = d.declaration_id
WHERE p.full_name = 'GUILLERMO LEÓN TEILLIER DEL VALLE'
  AND d.declaration_date IN (DATE '2021-03-28', DATE '2021-04-05', DATE '2022-04-01', DATE '2023-04-04')
ORDER BY d.declaration_date, d.declaration_id, a.asset_type, a.value_clp;

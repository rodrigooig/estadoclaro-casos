-- EstadoClaro gold cutoff: 2026-10-02T15:43:07+00:00; read-only execution 2026-10-03.
-- Compare one declaration-level total against details with scalar aggregates (no fan-out).
SELECT d.source_id, d.declaration_date, d.institution, d.position,
       d.global_liability_amount_clp,
       (SELECT COUNT(*) FROM liability_uf l WHERE l.declaration_id=d.declaration_id) AS liability_rows,
       (SELECT SUM(value_clp) FROM liability_uf l WHERE l.declaration_id=d.declaration_id) AS detail_liabilities_clp,
       (SELECT COUNT(*) FROM asset a WHERE a.declaration_id=d.declaration_id) AS asset_rows,
       (SELECT SUM(value_clp) FROM asset a WHERE a.declaration_id=d.declaration_id) AS detail_assets_clp
FROM declaration d
WHERE d.person_id=(SELECT person_id FROM declarant
                   WHERE full_name='GABRIELA ISIS JULIET VARELA LEDERMANN')
ORDER BY d.declaration_date;

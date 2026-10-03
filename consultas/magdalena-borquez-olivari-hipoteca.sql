-- Corte gold: 2026-10-02T15:43:07+00:00; consultas read-only 2026-10-03.
-- Pantalla de pasivos: últimos paneles, pasivo > activos, sin outlier del panel.
SELECT d.full_name, dec.declaration_date, dec.source_id, p.institution, p.position,
       p.assets_clp, p.liabilities_clp, p.net_worth_clp, p.assets_uf,
       p.liabilities_uf, p.net_worth_uf, p.confidence, p.has_outlier
FROM panel p
JOIN declaration dec USING (declaration_id)
JOIN declarant d ON d.person_id = p.person_id
WHERE d.full_name = 'MAGDALENA FABIOLA BÓRQUEZ OLIVARI'
ORDER BY dec.declaration_date;

-- Pasivo y bienes del detalle de la declaración 5113559.
SELECT *
FROM liability_uf
WHERE declaration_id = (
  SELECT declaration_id FROM declaration WHERE source_id = 5113559
);
SELECT *
FROM asset
WHERE declaration_id = (
  SELECT declaration_id FROM declaration WHERE source_id = 5113559
);

-- Comprobación temporal en la tabla de declaraciones.
SELECT source_id, declaration_date, institution, position, global_liability_amount_clp
FROM declaration
WHERE person_id = (
  SELECT person_id FROM declarant
  WHERE full_name = 'MAGDALENA FABIOLA BÓRQUEZ OLIVARI'
)
ORDER BY declaration_date;

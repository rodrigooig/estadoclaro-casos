-- Corte: meta.build_date 2026-10-02T15:43:07+00:00
-- Identidad exacta: nombre completo y toda la serie de snapshots disponible.
SELECT
    d.full_name,
    p.institution,
    p.position,
    p.declaration_date,
    p.declaration_type,
    p.is_current,
    p.source_uri
FROM panel AS p
JOIN declarant AS d USING (person_id)
WHERE d.full_name = 'YERKO NAJIB RAVLIC ELAL'
ORDER BY p.declaration_date DESC;

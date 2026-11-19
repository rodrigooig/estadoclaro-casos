-- Semilla: pares con compra al organismo declarado y sociedades con 4-20 declarantes.
-- Oro EstadoClaro: build_date 2026-11-17T18:25:42+00:00.
SELECT p.full_name, d.position, d.institution, d.declaration_date,
       ds.legal_name, ds.supplier_rut, ds.n_declarants,
       ds.n_orders_during, ds.n_same_institution, ds.amount_clp_during,
       ds.n_direct_award, ds.n_agile, ds.name_similarity, ds.is_widely_held
FROM declared_supply ds
JOIN person p ON p.person_id = ds.person_id
JOIN declaration d ON d.person_id = ds.person_id AND d.is_current
WHERE ds.n_same_institution > 0
  AND ds.n_orders_during > 0
  AND ds.n_declarants BETWEEN 4 AND 20
  AND ds.amount_clp_during >= 5000000
ORDER BY ds.amount_clp_during DESC;

-- Fila identificada al contrastar la identidad del declarante en la fuente primaria:
-- JULIO ANTONIO CHERIF PÉREZ, CGE RUT 76.411.321-7.

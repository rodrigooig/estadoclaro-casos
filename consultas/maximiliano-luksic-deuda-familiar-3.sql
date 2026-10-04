-- Falsification check: supplier records whose source name contains the exact family surname.
-- This string-level check is narrow; it does not prove absence of all related-party suppliers.
-- Artifact cutoff: 2026-10-02T15:43:07Z. Read-only via ec-gold-sql.
SELECT
    COUNT(*) AS n_orders,
    COUNT(DISTINCT supplier_rut) AS n_suppliers
FROM purchase_order
WHERE LOWER(COALESCE(supplier_name, '')) LIKE '%luksic%';

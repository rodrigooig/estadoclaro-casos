-- Semilla exploratoria 2026-11-21: coincidencia con institución + contrato directo, control declarado y bajo número de declarantes.
SELECT p.full_name,d.position,d.institution,s.supplier_name,s.supplier_rut,s.participation_type,s.is_controlling,s.n_orders_during,s.n_same_institution,s.n_direct_award,s.amount_clp_during,s.first_order_date,s.last_order_date
FROM declared_supply s JOIN person p USING(person_id) JOIN declaration d ON d.person_id=s.person_id AND d.is_current
WHERE s.n_same_institution>0 AND s.n_direct_award>0 AND s.n_orders_during>0 AND (s.participation_type='DERECHO' OR s.is_controlling)
AND s.n_declarants<=2 AND s.amount_clp_during BETWEEN 1000000 AND 300000000
ORDER BY s.n_same_institution DESC,s.amount_clp_during DESC;
-- La consulta devolvió 6 filas; se eligió Diego Antonio San Martín López tras deduplicar por INDICE.md. Varias filas restantes ya correspondían a pistas investigadas/publicadas.

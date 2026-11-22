-- Semilla del gold al corte de esta corrida: intereses anidados con compras a la propia institución.
SELECT DISTINCT p.full_name,o.institution,n.parent_legal_name,n.legal_name,n.supplier_rut,
       n.participation_type,n.also_declared_directly,n.n_orders_during,n.n_same_institution,
       n.amount_clp_during,n.window_start,n.window_end
FROM company_nested_supply n
JOIN declarant p USING(person_id)
JOIN office o USING(person_id)
WHERE n.n_same_institution>0 AND n.n_orders_during>1 AND n.amount_clp_during>3000000
ORDER BY n.amount_clp_during DESC;

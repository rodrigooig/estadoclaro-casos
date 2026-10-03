-- Check whether EstadoClaro's declared-company crosswalk contains this exact person.
-- The query intentionally records no personal identifier.
SELECT p.full_name, s.legal_name, s.n_orders_during, s.amount_clp_during,
       s.n_same_institution, s.first_order_date, s.last_order_date
FROM declared_supply s
JOIN person p USING (person_id)
WHERE p.full_name = 'JAVIER HERNÁN UGARTE MANSILLA';

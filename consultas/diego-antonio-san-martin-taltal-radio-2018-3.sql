-- Órdenes deduplicadas por código; declared_supply_order puede repetir una OC en distintas ventanas declarativas.
SELECT order_code,url,sent_date,status,route,is_direct_award,buyer_name,amount_clp,amount_uf,timing,same_institution
FROM declared_supply_order s JOIN person p USING(person_id)
WHERE p.full_name='DIEGO ANTONIO SAN MARTÍN LÓPEZ' AND s.supplier_rut='76349892'
QUALIFY row_number() OVER(PARTITION BY order_code ORDER BY sent_date)=1
ORDER BY sent_date;

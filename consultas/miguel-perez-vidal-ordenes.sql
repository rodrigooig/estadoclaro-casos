SELECT declaration_id, order_code, sent_date, timing, buyer_name, buyer_key,
       same_institution, exclusion_reason, is_primary_for_person,
       amount_clp, amount_uf, main_rubro
FROM declared_supply_order
WHERE person_id = (SELECT person_id FROM person WHERE full_name = 'MIGUEL ANGEL PEREZ VIDAL')
  AND supplier_rut = '76690595'
ORDER BY sent_date, declaration_id;

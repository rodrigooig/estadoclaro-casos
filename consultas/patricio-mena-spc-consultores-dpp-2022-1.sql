-- OC y coincidencia temporal declarada; reproducible solo en ec-gold-sql.
SELECT person_id, declaration_id, supplier_rut, legal_name, participation_type,
       article_4_stake, is_controlling, order_code, sent_date, status, route,
       buyer_name, amount_clp, amount_uf, timing, same_institution, is_primary_for_person
FROM declared_supply_order
WHERE person_id = 'b0d986b516a49eca092f5962d9978dab'
  AND supplier_rut = '76046989'
ORDER BY sent_date, declaration_id;

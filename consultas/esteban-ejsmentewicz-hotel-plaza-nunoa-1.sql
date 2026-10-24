SELECT declaration_id, person_id, declaration_date, institution, position, declaration_type
FROM declaration
WHERE person_id = '3e714ae5cfd690575f9da6179e767552'
ORDER BY declaration_date;

SELECT declaration_id, supplier_rut, legal_name, participation_type, is_controlling, article_4_stake,
       window_start, window_end, institution_key
FROM company_supply
WHERE person_id = '3e714ae5cfd690575f9da6179e767552'
  AND supplier_rut = '76556099';

SELECT order_code, sent_date, buyer_name, supplier_rut, supplier_name, amount_clp, amount_uf,
       route, status, url
FROM purchase_order
WHERE supplier_rut = '76556099'
ORDER BY sent_date;

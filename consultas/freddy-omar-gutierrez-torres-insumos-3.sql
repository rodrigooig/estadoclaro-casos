-- Primary order-code list during the officially documented period in office.
SELECT
    order_code,
    sent_date,
    buyer_name,
    amount_clp,
    currency,
    declared_amount,
    tender_code,
    status,
    is_direct_award,
    main_rubro,
    url
FROM purchase_order
WHERE supplier_rut = '76500119'
  AND sent_date BETWEEN DATE '2021-09-03' AND DATE '2022-03-11'
ORDER BY sent_date, order_code;

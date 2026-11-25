-- Corte de oro: 2026-11-24T20:08:20+00:00.
-- declared_supply_order usa is_primary_for_person para no contar el mismo pedido
-- más de una vez cuando varias declaraciones enlazan a la misma persona/proveedor.
SELECT o.person_id, p.full_name, o.supplier_rut, o.legal_name,
       o.participation_type, o.is_controlling,
       ds.n_orders_during, ds.n_direct_award, ds.amount_clp_during,
       ds.amount_uf_during, o.order_code, o.url, o.sent_date, o.status,
       o.route, o.is_direct_award, o.tender_code, o.buyer_name, o.amount_clp,
       o.amount_uf, o.main_rubro, o.same_institution, o.timing,
       serv.serv_self_supply_matches
FROM declared_supply_order o
JOIN declarant p USING (person_id)
JOIN declared_supply ds USING (person_id, supplier_rut)
CROSS JOIN (
    SELECT COUNT(*) AS serv_self_supply_matches
    FROM campaign_self_supply cs
    WHERE cs.person_id = '16a9693036b8b2c448d51f770db11465'
       OR cs.legal_name ILIKE '%PRONTO CASA%'
) serv
WHERE o.person_id = '16a9693036b8b2c448d51f770db11465'
  AND o.supplier_rut = '76934250'
  AND o.is_primary_for_person
ORDER BY o.sent_date, o.order_code;

-- Pista exploratoria del oro: vínculos de Esmirna Vidal Moraga.
-- Corte: meta.build_date 2026-11-27T21:06:24+00:00
SELECT p.full_name, d.source_id, d.declaration_date, d.institution, d.position,
       c.legal_name, c.company_rut, c.quantity, c.is_controlling,
       o.order_code, o.url, o.sent_date, o.status, o.route, o.amount_clp, o.amount_uf,
       o.buyer_name, o.timing, o.same_institution
FROM declared_supply_order o
JOIN declaration d ON o.declaration_id=d.declaration_id
JOIN person p ON o.person_id=p.person_id
JOIN company c ON o.declaration_id=c.declaration_id AND o.asset_id=c.asset_id
WHERE p.full_name ILIKE '%ESMIRNA%VIDAL%'
ORDER BY o.sent_date;

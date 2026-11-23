-- Consultora Lafken SpA de Piero Carrillanca: participación/actividad declarada y OCs emitidas por el mismo SLEP tras la vigencia del art. 35 quáter (11-12-2023).
-- Una fila por orden; columnas de ventana reportan suma/conteo no duplicados de purchase_order.
WITH control AS (
    SELECT d.person_id, d.declaration_date, d.source_id, d.institution, d.position,
           c.legal_name, c.company_rut, c.type AS participation_type,
           c.quantity, c.is_controlling, c.value_clp AS declared_value_clp
    FROM declaration d
    JOIN company c USING (declaration_id)
    WHERE d.person_id = 'aae5b3a0fb09c8574b4a47081ed6ce97'
      AND d.declaration_date = DATE '2025-03-31'
      AND c.company_rut = '77707498'
), activity AS (
    SELECT d.person_id, a.type AS activity_type, a.industry, a.entity,
           a.is_paid, a.last_twelve_months
    FROM declaration d
    JOIN activity a USING (declaration_id)
    WHERE d.person_id = 'aae5b3a0fb09c8574b4a47081ed6ce97'
      AND d.declaration_date = DATE '2025-03-31'
      AND a.entity ILIKE '%SERVICO LOCAL DE EDUCACION PUBLICA LLANQUIHUE%'
), orders AS (
    SELECT *
    FROM purchase_order
    WHERE supplier_rut = '77707498'
      AND buyer_name = 'SERVICIO LOCAL DE EDUCACION PUBLICA DE LLANQUIHUE'
      AND sent_date >= DATE '2023-12-11'
)
SELECT control.person_id, control.declaration_date, control.source_id,
       control.institution AS declared_office_institution,
       control.position AS declared_office_position,
       control.legal_name, control.company_rut, control.participation_type,
       control.quantity AS declared_shares_or_percent, control.is_controlling,
       control.declared_value_clp, activity.activity_type, activity.industry,
       activity.entity AS declared_paid_activity_entity, activity.is_paid,
       activity.last_twelve_months,
       orders.order_code, orders.sent_date, orders.status, orders.amount_clp,
       orders.amount_uf, orders.is_agile, orders.route, orders.url,
       count(*) OVER () AS same_buyer_order_count,
       sum(orders.amount_clp) OVER () AS same_buyer_total_clp,
       sum(orders.amount_uf) OVER () AS same_buyer_total_uf
FROM orders
CROSS JOIN control
LEFT JOIN activity USING (person_id)
ORDER BY orders.sent_date, orders.order_code;

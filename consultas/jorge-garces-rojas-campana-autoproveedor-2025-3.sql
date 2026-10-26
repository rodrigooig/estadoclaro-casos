-- Gold de solo lectura; corte 2026-10-23T14:20:50+00:00.
-- Registro de campaña al que se vinculan los gastos.
SELECT c.name, c.election_year, c.office, c.region, c.audit_status, c.outcome,
       c.self_supply_clp, c.self_supply_uf, c.self_supply_rejected_clp,
       c.self_supply_rejected_uf, cs.line_id, cs.amount_clp, cs.description,
       cs.is_rejected, c.source_uri
FROM campaign c
JOIN campaign_self_supply cs USING (campaign_id)
WHERE c.campaign_id = '8007f86d694e8b2aeaa91e3324c58940'
ORDER BY cs.line_id;

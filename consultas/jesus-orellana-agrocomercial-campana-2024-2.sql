-- Discovery/triage query that surfaced the selected campaign self-supply lead.
-- Read-only gold cut: 2026-11-17T18:25:42+00:00
SELECT
  p.full_name,
  cs.legal_name,
  count(*) AS lines,
  sum(cs.amount_clp) AS total_clp,
  sum(cs.amount_uf) AS total_uf,
  string_agg(DISTINCT cs.description, ' | ') AS descriptions,
  bool_or(cs.is_rejected) AS any_rejected,
  string_agg(DISTINCT cs.reimbursement_type, ' | ') AS reimbursement_types
FROM campaign_self_supply cs
JOIN person p USING (person_id)
GROUP BY p.full_name, cs.legal_name
HAVING sum(cs.amount_clp) >= 500000
ORDER BY total_clp DESC;

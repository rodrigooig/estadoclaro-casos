-- Chequeo acotado de cuenta/candidatura Servel en el oro.
SELECT c.campaign_id, c.election_year, c.election_name, c.office,
       c.audit_status, c.has_ledger, c.outcome, c.source_uri
FROM campaign c
JOIN person p USING (person_id)
WHERE p.full_name = 'PABLO ALLARD SERRANO'
ORDER BY c.election_year;

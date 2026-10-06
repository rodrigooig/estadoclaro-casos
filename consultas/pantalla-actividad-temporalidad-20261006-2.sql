-- Check temporal flags on currently active declarations and paid activities.
-- Gold cutoff: 2026-10-02T15:43:07+00:00; run with ec-gold-sql.
SELECT a.type, a.industry,
       COUNT(*) AS activity_rows,
       COUNT(DISTINCT p.person_id) AS people,
       COUNT(DISTINCT a.entity) FILTER (
           WHERE NULLIF(TRIM(a.entity), '') IS NOT NULL
       ) AS named_entities,
       COUNT(DISTINCT p.person_id) FILTER (
           WHERE a.is_paid AND a.last_twelve_months
       ) AS paid_recent_people
FROM panel p
JOIN activity a USING (declaration_id)
WHERE p.is_current
GROUP BY ALL
ORDER BY people DESC, activity_rows DESC;

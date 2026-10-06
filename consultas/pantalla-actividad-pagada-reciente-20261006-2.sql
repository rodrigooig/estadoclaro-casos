-- Exact aggregate of current activity types by paid/recent flags.
-- Gold cutoff: 2026-10-02T15:43:07+00:00; run with ec-gold-sql.
SELECT a.type,
       COUNT(*) AS activity_rows,
       COUNT(DISTINCT p.person_id) AS people,
       COUNT(DISTINCT p.person_id) FILTER (WHERE a.is_paid) AS paid_people,
       COUNT(DISTINCT p.person_id) FILTER (WHERE a.last_twelve_months) AS recent_people,
       COUNT(DISTINCT p.person_id) FILTER (
           WHERE a.is_paid AND a.last_twelve_months
       ) AS paid_recent_people,
       COUNT(DISTINCT p.person_id) FILTER (
           WHERE a.is_paid AND a.last_twelve_months
             AND NULLIF(TRIM(a.entity), '') IS NOT NULL
       ) AS paid_recent_named_entity_people
FROM panel p
JOIN activity a USING (declaration_id)
WHERE p.is_current
GROUP BY a.type
ORDER BY people DESC;

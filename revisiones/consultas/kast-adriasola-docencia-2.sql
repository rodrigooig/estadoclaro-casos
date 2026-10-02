SELECT p.full_name, x.institution, x.position, x.declaration_date,
       x.is_current, x.source_uri, x.published_until, x.withdrawn_on
FROM panel x
JOIN person p USING (person_id)
WHERE p.full_name = 'JOSE ANTONIO KAST ADRIASOLA'
ORDER BY x.declaration_date DESC;

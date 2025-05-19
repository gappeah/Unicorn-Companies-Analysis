SELECT unicorn_entry_year, industry, COUNT(*) as unicorn_count
FROM unicorn_startups
GROUP BY unicorn_entry_year, industry
ORDER BY unicorn_entry_year, unicorn_count DESC;
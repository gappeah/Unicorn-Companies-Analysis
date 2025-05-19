--- We are looking for the top 10 industries but count ----

SELECT industry, COUNT(*) as unicorn_count
FROM unicorn_startups
WHERE unicorn_entry_year >= EXTRACT(YEAR FROM CURRENT_DATE) - 10
GROUP BY industry
ORDER BY unicorn_count DESC
LIMIT 10;
